#!/bin/bash
# Matthieu PERRIN - 2016
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# LICENSE : CC-BY-SA 3.0 - http://creativecommons.org/licenses/by-sa/3.0/ 

. /etc/db_info.conf

db=centstorage
LISTTABLE=/usr/local/scripts/db/sql_optimize_centstorage.txt

optimise()
{
date >> /tmp/optimise.txt
echo "optimize table ${table}" >> /tmp/optimise.txt
        /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "optimize table ${table}" > /dev/null

        sleep 5
}


if [ -f ${LISTTABLE} ]; then
        while read table
        do
                optimise
        done < ${LISTTABLE}
fi

