#!/bin/bash
# THIS PLUGIN IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN https://fr.linkedin.com/in/perrinmatthieu - 2015


. /etc/db_info.conf
db=centstorage

t=$(date  +%s --date "1 days ago")
query="select count(host_name), host_name from logs where ctime > $t group by host_name ORDER BY count(host_name) DESC";

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}" > /tmp/logs_count_day2.txt

