#!/bin/bash

pgrep mysql > /dev/null && exit 1

. /etc/db_info.conf
db=centstorage 

query='DELETE FROM `log` WHERE `log`.`host_name` IS NULL;'
 /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" > /dev/null
