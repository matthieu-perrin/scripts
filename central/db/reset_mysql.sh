#!/bin/bash

nb=$(netstat -an | grep 3306 | grep ESTABLISHED | wc -l)
max=$(cat /etc/my.cnf | grep max_connections | cut -d "=" -f 2 |sed 's/[^0-9]*//g')
alert=$(( $max - 50 ))

if [ "$nb" -gt "$alert" ]; then

        /etc/init.d/mysql restart
        echo -n "Restart mysql : session = $nb (>$alert)"
        date
fi
