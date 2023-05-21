#!/data/data/com.termux/files/usr/bin/bash

# infinity loop
while true
do
	# info to check, is backup is possible
	ROUTER=`ip neigh | grep "xx.xx.xx.xx.xx.xx"` # home router MAC address
	IS_CHARGE=`termux-battery-status | grep DISCHARGING`
	TIME=`date "+%k"` # current time
	CURRENT_DATE=`date "+%d-%m-%Y"` # current date

        # check, is device in home network, is device is charging, is time between 2 and 5 hours, is there is backup in that day
	if [[ -n "$ROUTER" && -z "$IS_CHARGE"  && "$TIME" -ge "21" &&  "$TIME" -lt "23" && "$CURRENT_DATE" != "$DATE_FLAG" ]]
	then
		DATE_FLAG=`date "+%d-%m-%Y"` # flag to check if there was a backup in that day
		borg create --stats ssh://borg@$1:$2/home/borg/Backups::"DocsBackup-{now:%d-%m-%Y_%H:%M:%S}" /data/data/com.termux/files/home/downloads # creating a backup on a goorm server
	fi
	sleep 2 # wait 30 seconds
done
