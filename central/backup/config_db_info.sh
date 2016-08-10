#!/bin/bash

[ -z $3 ] && echo "usage : $0 db_host db_user db_password > /etc/db_info.conf" && exit 1

pass=$( echo -n $3 | base64)

echo -e "db_host=$1\ndb_user=$2\ndb_passwd=\$(echo -n ${pass} | base64 -d)"
