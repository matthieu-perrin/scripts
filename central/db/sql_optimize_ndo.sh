#!/bin/bash

. /etc/db_info.conf

db=ndo
LISTTABLE=/usr/local/scripts/db/sql_optimize_ndo.txt

optimise()
{
date >> /tmp/optimise.txt
echo "optimize table ${table}" >> /tmp/optimise.txt
        /usr/bin/mysql -u ${db_user} -h ${db_host} -p${db_passwd} -D ${db} -e "optimize table ${table}" > /dev/null

        sleep 5
}

/etc/init.d/ndo2db stop

if [ -f ${LISTTABLE} ]; then
        while read table
        do
                optimise
        done < ${LISTTABLE}
fi


/etc/init.d/ndo2db start


