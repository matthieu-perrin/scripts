#!/bin/bash

[ -z $3 ] && echo "usage : $0 nas_host nas_user nas_password > /etc/nas_info.conf" && exit 1

pass=$( echo -n $3 | base64)

echo -e "nas_host=$1\nnas_user=$2\nnas_passwd=\$(echo -n ${pass} | base64 -d)"
