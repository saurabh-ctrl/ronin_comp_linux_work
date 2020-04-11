#Deleting all files with size less than 1024 bytes. Required file name provided by the user

#!/bin/bash

echo "Enter the size and file name"
read ip_size
read file_name

#checking whether file exists or not
if [ -e $file_name ]
then
	#checking whether file is directory or not
	if [ -d $file_name ]
	then
		cd $file_name
		#listing files with details ( files only with size less than 1024 and in sorted order)
		find $file_name -type f -size -"$ip_size"c | sort -h | ls -lh
		#deleteing those files
		find $file_name -type f -size -"$ip_size"c -delete
		#After deletion listing files with details ( files only with size less than 1024 and in sorted order)
		find $file_name -type f -size -"$ip_size"c | sort -h | ls -lh
		#listing all files
		ls -l
	else
		if [ -s $file_name ]
		then
			file_size=$(stat -c %s "$file_name")
			if [ $file_size -le "$ip_size"c ]
			then
				$ rm "$file_name"
			fi
		else
			$ rm "$file_name"
		fi
	fi
else
	echo "no such file exists"
fi
cd ..
		