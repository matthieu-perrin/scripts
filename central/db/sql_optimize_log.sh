#!/bin/bash

pgrep mysql > /dev/null && exit 1

. /etc/db_info.conf
db=centstorage 

query='OPTIMIZE TABLE `log`,`data_bin`;'
 /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" > /dev/null
 