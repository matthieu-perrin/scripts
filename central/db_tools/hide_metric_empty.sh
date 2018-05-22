#!/bin/bash
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA



. /etc/db_info.conf
db=centreon_storage

query="select metric_id from metrics where metrics.metric_id not in (select distinct(id_metric) from data_bin)"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -se "$query" > /tmp/metric_empty

while read p; do
	
	query="update metrics set metrics.hidden=1 where metrics.metric_id=$p"
	/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -se "$query"
exit
done < /tmp/metric_empty
