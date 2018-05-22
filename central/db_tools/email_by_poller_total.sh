#!/bin/bash
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA


. /etc/db_info.conf
db=centreon_storage

t=$(date  +%s --date "7 days ago")
query="SELECT count(*) as emails FROM logs where msg_type=2 and ctime > $t";

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

