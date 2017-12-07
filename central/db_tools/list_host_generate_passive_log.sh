#!/bin/bash
# List Host sending data for non-existent services, last 24h
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centstorage

t1=$(date  +%s --date "1 days ago")
query="select output from logs where ctime > $t1 and output like 'Passive%'"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"  |sort | uniq  | cut -d"'" -f2,4
