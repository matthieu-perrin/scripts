#!/bin/bash
# List metric_id without data
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centstorage

query="SELECT metrics.metric_id FROM metrics LEFT JOIN data_bin ON data_bin.id_metric = metrics.metric_id WHERE data_bin.id_metric IS NULL ";
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}" 


