#!/bin/bash
# Remove useless data from database
# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
#
#  / \
# / ! \
# - - -
# !!!!! WARNING : THIS SCRIPT DELETE DATA IN DATABASE !!!!!
# !!!!! WARNING : slow execution time !!!!!

. /etc/db_info.conf
db=centstorage

# HIDE HOST DISABLED
query="UPDATE centstorage.hosts set hosts.enabled=0 where hosts.host_id IN (select host.host_id from centreon.host where host_activate LIKE '0') and hosts.enabled=1"
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

# DELETE LOGS FROM PASSIVE CHECKS SERVICE NOT FOUND
query="delete from logs where output like 'Passive check%'";
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

# DELETE LOG WITHOUT HOST
query='DELETE FROM `log` WHERE `log`.`host_name` IS NULL;'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

# DELETE LOGS WITHOUT HOST
query='DELETE FROM `logs` WHERE `logs`.`host_name` IS NULL;'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

# DELETE POLLER SESSION DOES NOT EXIST ANYMORE
query='DELETE FROM `nagios_conninfo` WHERE data_end_time != 0;'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

# OPTIMISE TABLE
query='OPTIMIZE TABLE `logs`,`data_bin`;'
/usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -N -s -e "${query}"

