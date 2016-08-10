#!/bin/bash
# Matthieu PERRIN - Juin 2016

centreon_config=/etc/centreon/conf.pm

db_host=$(cat ${centreon_config} | grep db_host | cut -d'=' -f 2 |  cut -d '"' -f 2)
db_user=$(cat ${centreon_config} | grep db_user | cut -d'=' -f 2 |  cut -d '"' -f 2)
db_pass=$(cat ${centreon_config} | grep db_pass | cut -d'=' -f 2 |  cut -d '"' -f 2)

centcore=$(cat ${centreon_config} | grep cmdFile | cut -d'=' -f 2 |  cut -d '"' -f 2)
CentreonDir=$(cat ${centreon_config} | grep CentreonDir | cut -d'=' -f 2 |  cut -d '"' -f 2)
nagiosCFG=${CentreonDir}/filesGeneration/nagiosCFG

# genere la liste des tables à purger
mysql -h $db_host  -u ${db_user} -p${db_pass} -s -N -D information_schema -e "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE column_name LIKE 'instance_id' AND TABLE_SCHEMA = 'ndo'" > /tmp/sql_ndo_tables.txt


#tire au sort un numero de poller

max=$(ls ${nagiosCFG} |grep -o '[0-9]*' | wc -l)
r=$(( ( RANDOM % $max )  + 1 ))
id=$(ls ${nagiosCFG} |grep -o '[0-9]*' | sed -n ${r}p)

# si le poller existe
if [ -d ${nagiosCFG}/${id} ];
then
        poller=$(cat ${nagiosCFG}/${id}/ndomod.cfg | grep instance_name | cut -d '=' -f 2)

        idndo=$(mysql -h  $db_host  -u ${db_user} -p${db_pass} -s -N -D ndo -e "SELECT instance_id FROM nagios_instances where instance_name like '${poller}'")

        if [ -n "$idndo" ]; then

        #purge les tables
        while read table
        do
           mysql -h  $db_host  -u ${db_user} -p${db_pass} -s -N -D ndo -e "DELETE FROM $table WHERE instance_id = $idndo";
        done < /tmp/sql_ndo_tables.txt

        #recharge le poller
		echo "RELOAD:${id}" >> ${centcore}

        echo -n "PURGE NDO POLLER ${poller}, ID ${id}, IDNDO $idndo "
        date +"%x %X"
        fi

fi
