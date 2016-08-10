#!/bin/bash

pgrep mysql > /dev/null && exit 1

. /etc/db_info.conf
db=ndo

query='DELETE FROM `nagios_conninfo` WHERE data_end_time != 0;'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" > /dev/null

query='DELETE FROM `nagios_conninfo` WHERE connect_source LIKE "FILE"'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" > /dev/null

