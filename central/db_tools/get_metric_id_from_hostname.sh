#!/bin/bash
# Display metric_id for hostname
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA


. /etc/db_info.conf
db=centstorage

query="SELECT metric_id FROM index_data  left join metrics on index_data.id = metrics.index_id where host_name LIKE \"%$1%\""

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"
