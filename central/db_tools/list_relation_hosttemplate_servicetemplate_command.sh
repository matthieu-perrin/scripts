#!/bin/bash
# foreach host template, list service template and command
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA

. /etc/db_info.conf
db=centreon

query="SELECT DISTINCT  host.host_name, service.service_description, command_name, command_line FROM host_service_relation, host_template_relation, host, service, command where host_service_relation.host_host_id=host_template_relation.host_tpl_id and  host.host_id=host_service_relation.host_host_id and service.service_id=host_service_relation.service_service_id and service.command_command_id =command.command_id"

/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "${query}"  | sed 's/\t/,/g'


