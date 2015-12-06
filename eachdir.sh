#########################################################################
# File Name: eachdir.sh
# Author: lukang
# mail: lk88boy@gmail.com
# Created Time: Sun 06 Dec 2015 01:24:43 PM CST
#########################################################################
#!/bin/bash
showdir(){
	if [ -z $1 ];then
		dir=$(pwd)
	else
		dir=$1
	fi
	dirList=$(ls $dir)
	for item in $dirList
	do
		file=$dir'/'$item
		if [ -d $file ];then
			showdir $file
		else
			echo "$file"
		fi
	done
}

showdir 
