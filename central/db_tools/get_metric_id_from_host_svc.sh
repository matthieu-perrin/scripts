#!/bin/bash
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA


. /etc/db_info.conf
db=centreon_storage

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db}  -Bvse "select distinct(metrics.metric_id), metrics.metric_name from index_data, metrics, data_bin where index_data.id = metrics.index_id and metrics.metric_id = data_bin.id_metric and host_name LIKE \"$1\" and service_description LIKE \"$2\"" | grep -v NULL 

