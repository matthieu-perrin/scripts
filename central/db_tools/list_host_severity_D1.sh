#!/bin/bash
# List Host with severity level = 1
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centreon

query="select distinct host_name, host_alias, GROUP_CONCAT(hg_name) from hostcategories, host, hostcategories_relation, hostgroup, hostgroup_relation where hostcategories_relation.hostcategories_hc_id=hostcategories.hc_id and hostcategories_relation.host_host_id=host.host_id  and hostgroup_relation.host_host_id=host.host_id and hostgroup_relation.hostgroup_hg_id=hostgroup.hg_id and level = '1' GROUP BY host_name "

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"  | sed 's/\t/;/g' 


