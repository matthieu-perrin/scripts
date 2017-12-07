#!/bin/bash
# Number logs by host, last 24h
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centstorage

t=$(date  +%s --date "1 days ago")
query="select count(host_name), host_name from logs where ctime > $t and msg_type <> 8 group by host_name ORDER BY count(host_name) DESC";

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}" 

