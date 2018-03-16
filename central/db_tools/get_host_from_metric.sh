#!/bin/bash
# Display hostname and service for metric_id
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA


. /etc/db_info.conf
db=centstorage

query="SELECT host_name, service_description FROM index_data, metrics where metrics.index_id = index_data.id and metric_id=$1"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"
