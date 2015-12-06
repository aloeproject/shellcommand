#########################################################################
# File Name: command.sh
# Author: lukang
# mail: lukang@baijiahulian.com
# Created Time: Thu 24 Sep 2015 10:24:05 AM CST
#########################################################################
#!/bin/bash

alias grep='grep --color';
alias mytar='tar -zcvf'
alias unmytar='tar -xzvf'
php=`which php`
#遍历目录

showdir (){
	if [ -z "$1" ];then
		eachdir $(pwd)
	else
		eachdir .
	fi
}

php_check() {
	path='.'
	if [ -n "$1" ];then
		path=`pwd`"/"$1
	fi
	if [ -d "$path" ];then
		ret=$(find "$path" -name "*.php" -exec $php -l {} \;)
		echo "$ret" > /tmp/check_list
		ret=$(grep --color "Parse error" /tmp/check_list)
		if [ -z "$ret" ];then
			echo "no error"
		else
			echo "$ret"
		fi
	else
		echo "$path is not directory"
	fi
}

p_grep() {
    if [ -n "$1" ];then
        find -type f -name "*.php" -exec grep "$1" -nH --color {} \;
    fi  
}

jsondecode(){
    if [ -n "$1" ];then
        $php ~/.mycommand/jsondecode.php "$@"
    fi  
}

urldecode(){
    if [ -n "$1" ];then
    	$php ~/.mycommand/urldecode.php "$@"
    fi  
}

unix_timestamp(){
    if [ -n "$@" ];then
		$php ~/.mycommand/mytime.php "unix_timestamp" "$@"
    else
        echo "参数不能为空"
    fi  
}

from_unixtime(){
    if [ -n "$@" ];then
         $php ~/.mycommand/mytime.php "from_unixtime" "$@"
    else
        echo "参数不能为空"
    fi  
}

get_path(){
	if [ -n "$1" ];then
		path=`pwd`;
		echo $path/$1;
	else
		echo "参数不能为空";
	fi
}
