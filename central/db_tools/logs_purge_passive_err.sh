#!/bin/bash
# Delete logs frome Passive check error
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA

. /etc/db_info.conf
db=centstorage

t31=$(date  +%s --date "31 days ago")
t30=$(date  +%s --date "30 days ago")
query="delete from logs where ctime > $t31 and ctime < $t30 and output like 'Passive check%'";

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}" 

