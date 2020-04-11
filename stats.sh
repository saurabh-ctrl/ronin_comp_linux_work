# NAME : Saurabh Pandurang Bhosale
# Branch : VLSI and ES (FY MTech)
# MIS no : 121935007

#process memory usage code

#!/bin/bash

printf "TIME(24HR)\tMemory\t\tDisk\t\tCPU\t\tProcess\n"
end=$((SECONDS+3600))
while [ $SECONDS -le $end ];do
	TSTART=$(ps -aux --sort=-%cpu | awk 'NR==2{printf "%s\t\t",$9}')
	MEMORY=$(ps -aux --sort=-%cpu | awk 'NR==2{printf "%.f%%\t\t",$4}')
	CPU=$(ps -aux --sort=-%cpu | awk 'NR==2{printf "%.f%%\t\t",$3}')
	COMMND=$(ps -aux --sort=-%cpu | awk 'NR==2{printf "%s\t\t\n",$11}')
	DISK=$(du -h $COMMND | awk '{printf "%s\t\t",$1}')
	echo "$TSTART $MEMORY $DISK $CPU $COMMND"
	sleep 60
done


#Description:
#Here main command are:
#1.	ps		:	information about currently running process
#2. -aux	: 	i)	a option tells ps to display the processes of all users
#				ii)	u stands for a user-oriented format 
#				iii)x option instructs ps to list the processes without a controlling terminal.
#3.	--sort=-%cpu : sirting done with highest cpu usage process
#4. du -h	: 	Disk usage display with user friendly style
			
