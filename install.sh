#!/bin/bash 
# @ production environment, remove -x option
# paging.php installer
# (c) Jan 2023 PD2HSB 
clear

while true; do

echo
echo "Installer for the paging.php extension for pi-star"
echo
read -p "Do you want to install the file? (y/n) " yn

case $yn in 
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

done

clear
echo Check if the OS is pi-star:
DIRE=/var/www/dashboard
if [ ! -d "$DIRE" ]; then
   	clear
	echo "$DIRE does not exist."
	echo Are you installing the script on pi-star???
	exit
fi
echo "Change directory to $DIRE"
cd "$DIRE"
sleep 2
echo check if previous version is installed...
FILE=paging.php
if [ -f "$FILE" ]; then
    echo "$FILE exists. Remove old version..."
	sudo rm paging.php
fi
sleep 2
echo Downloading the latest paging.php file.
curl "https://raw.githubusercontent.com/hansheesbeen/Pi-star-local-pocsag-gateway/main/paging.php" -o "paging.php"
sleep 2
clear
echo The file paging.php is installed on the pi-star webserver.
echo Please use following command to send paging messages locally:
echo
echo "http://IP-ADRESS-PISTAR/paging.php?ric=RADIOID&key=SECRECTKEY&msg=MESSAGE"
echo
