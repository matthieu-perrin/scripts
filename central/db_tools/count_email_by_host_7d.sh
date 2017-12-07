#!/bin/bash
# Display notification number by host last 7 days
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centstorage

t=$(date  +%s --date "7 days ago")
query="SELECT count(host_name), host_name  FROM logs where msg_type = 2 and ctime > $t group by host_name ORDER BY count(host_name) DESC;"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"
