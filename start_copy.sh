#!/data/data/com.termux/files/usr/bin/bash

SERVER="3.72.12.141" # server ip
PORT="57177" # server port

IS_ON_PROGRESS=`ps -e | grep reserve_copy.sh` # checking if reserve copying in alredy running

# colors for decoration an output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "[*] starting reserve_copy.sh..."
sleep 3
if [ -z "$IS_ON_PROGRESS" ]
then
	nohup ./reserve_copy.sh $SERVER $PORT >/dev/null 2>&1 & # starting reserve_copy script on a background, and send output to /dev/null
	echo -e "${GREEN}[+]${NC} reserve_copy started succesfully"
else
	echo -e "${RED}[-]${NC} resrve_copy.sh is alredy running! Exit..."
fi
