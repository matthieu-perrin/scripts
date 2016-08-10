#!/bin/bash

. /etc/db_info.conf

db=centstorage
LISTTABLE=/usr/local/scripts/db/sql_optimize_centstorage.txt

optimise()
{
date >> /tmp/optimise.txt
echo "optimize table ${table}" >> /tmp/optimise.txt
        /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "optimize table ${table}" > /dev/null

        sleep 5
}


if [ -f ${LISTTABLE} ]; then
        while read table
        do
                optimise
        done < ${LISTTABLE}
fi

