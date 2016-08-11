#!/bin/bash
# Matthieu PERRIN - 2016
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# LICENSE : CC-BY-SA 3.0 - http://creativecommons.org/licenses/by-sa/3.0/ 

pgrep mysql > /dev/null && exit 1

. /etc/db_info.conf
db=ndo

query='DELETE FROM `nagios_conninfo` WHERE data_end_time != 0;'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" > /dev/null

query='DELETE FROM `nagios_conninfo` WHERE connect_source LIKE "FILE"'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}" > /dev/null

