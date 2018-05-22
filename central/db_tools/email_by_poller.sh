#!/bin/bash
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA


. /etc/db_info.conf
db=centreon_storage

t=$(date  +%s --date "7 days ago")
#query="SELECT  host_name  FROM logs where msg_type = 2 and ctime > $t and notification_contact=\"hotline\";"
#query="SELECT count(host_name) as emails, host_name FROM logs where msg_type = 2 and ctime > $t and notification_contact=\"hotline\" group by host_name ORDER BY emails DESC LIMIT 10"
query="SELECT count(instance_name) as emails, instance_name FROM logs where msg_type=2 and ctime > $t group by instance_name order by emails desc limit 30"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}" > /tmp/email_pollers.txt

