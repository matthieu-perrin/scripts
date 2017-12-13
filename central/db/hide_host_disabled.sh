#!/bin/bash
# THIS PLUGIN IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2015


. /etc/db_info.conf
db=centstorage

query="UPDATE centstorage.hosts set hosts.enabled=0 where hosts.host_id IN (select host.host_id from centreon.host where host_activate LIKE "0") and hosts.enabled=1"

 /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"
