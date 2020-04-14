# NAME : Saurabh Pandurang Bhosale
# Branch : VLSI and ES (FY MTech)
# MIS no : 121935007

#checking Internet Connectivity

#!/bin/bash

$ ping -c 1 www.google.com &>/dev/null
checker= $?
if [ $checker -eq 0 ] 
then
	echo "INTERNET is UP"
else
	echo "INTERNET is DOWN"
fi
