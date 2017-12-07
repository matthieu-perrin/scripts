#!/bin/bash
# Display host_name, service_description for metric_id
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 

. /etc/db_info.conf
db=centstorage

while read p; do

	query="SELECT host_name, service_description, metric_name FROM index_data, metrics where metrics.index_id = index_data.id and metric_id=$p"
	/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

done <$1
