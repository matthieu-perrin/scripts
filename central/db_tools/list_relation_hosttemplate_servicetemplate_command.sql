SELECT DISTINCT  host.host_name, service.service_description, command_name, command_line FROM host_service_relation, host_template_relation, host, service, command where host_service_relation.host_host_id=host_template_relation.host_tpl_id and  host.host_id=host_service_relation.host_host_id and service.service_id=host_service_relation.service_service_id and service.command_command_id =command.command_id