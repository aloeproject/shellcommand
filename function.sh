#########################################################################
# File Name: .mycommand/function.sh
# Author: lukang
# mail: lk88boy@gmail.com
# Created Time: Sun 06 Dec 2015 03:40:23 PM CST
#########################################################################
#!/bin/bash
eachdir(){
    dirList=$(ls $1)
    for item in $dirList
    do  
        filename=$1"/"$item
        if [ -d $filename ];then
            echo -e "\e[0;36m$filename\e[0m";
            eachdir $filename
        else
            echo -e "\e[0;32m$filename\e[0m";
        fi  
    done
}
