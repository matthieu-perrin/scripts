#!/bin/bash
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2018 - CC-BY-SA


[ -z $2 ] && echo "2 arg" && exit

. /etc/db_info.conf
db=centreon_storage

query="select name, alias from hosts where name like \"%${1}%\" and alias not in (select hosts.alias from hosts, hosts_hostgroups, hostgroups where hosts.name like \"%${1}%\" and hostgroups.name like \"${2}\" and hosts.host_id=hosts_hostgroups.host_id and hostgroups.hostgroup_id=hosts_hostgroups.hostgroup_id)"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}" > /tmp/${1}_not_in_${2}.txt
