#!/bin/bash
# list service template foreach host template
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centreon

query="SELECT DISTINCT  host.host_name, service.service_description FROM host_service_relation, host_template_relation, host, service where host_service_relation.host_host_id=host_template_relation.host_tpl_id and host.host_id=host_service_relation.host_host_id and service.service_id=host_service_relation.service_service_id"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"  | sed 's/\t/;/g' 


