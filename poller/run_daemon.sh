#!/bin/bash
# THIS PLUGIN IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN (eMaintenance) - Mars 2017
# start daemon if not running


process=("nsca" "nrpe" "postfix" "pfx")
[ -z $1 ] || process=("$@")

start_process()
{
  /etc/init.d/$1 start
}

check_process()
{
  pid=$(pgrep "$1")
  res=$?
  return $res
}

keep_running()
{
  check_process "$1" || start_process "$1"
}

for i in "${process[@]}"
do
  keep_running $i
  [[ "$i" == "centengine" ]] && (check_process centengine || start_process nagios)
done



