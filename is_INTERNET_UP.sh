#checking Internet Connectivity

#!/bin/bash

$ ping -c 1 www.google.com &>/dev/null
if [ $? -eq 0 ] 
then
	echo "INTERNET is UP"
else
	echo "INTERNET is DOWN"
fi