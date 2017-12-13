#!/bin/bash
# THIS PLUGIN IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2015


. /etc/db_info.conf
db=centstorage



t=$(date  +%s --date "1 days ago")
query="SELECT distinct(id_metric) FROM data_bin where  ctime > $t";
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" | sort > /tmp/list_id_metric_1day.txt

t=$(date  +%s --date "3 days ago")
query="SELECT distinct(id_metric) FROM data_bin where  ctime > $t";
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" | sort > /tmp/list_id_metric_3day.txt


diff /tmp/list_id_metric_1day_sort.txt /tmp/list_id_metric_3day_sort.txt > /tmp/list_id_metric_diff.txt
cat /tmp/list_id_metric_diff.txt | grep  ">" | cut -d' ' -f2> /tmp/list_id_metric_diff_.txt


while read p; do

        query="SELECT host_name, service_description FROM index_data, metrics where metrics.index_id = index_data.id and metric_id=$p"
        /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"


done </tmp/list_id_metric_diff_.txt
