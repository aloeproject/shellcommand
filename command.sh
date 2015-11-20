#########################################################################
# File Name: command.sh
# Author: lukang
# mail: lukang@baijiahulian.com
# Created Time: Thu 24 Sep 2015 10:24:05 AM CST
#########################################################################
#!/bin/bash

alias grep='grep --color';


php_check() {
	find -name "*.php" -exec /apps/srv/php-fpm/bin/php -l {} \;
}

p_grep() {
    if [ -n "$1" ];then
        find -type f -name "*.php" -exec grep "$1" -nH --color {} \;
    fi  
}

jsondecode(){
    if [ -n "$1" ];then
        /apps/srv/php-fpm/bin/php ~/.mycommand/jsondecode.php "$@"
    fi  
}

urldecode(){
    if [ -n "$1" ];then
    	/apps/srv/php-fpm/bin/php ~/.mycommand/urldecode.php "$@"
    fi  
}

unix_timestamp(){
    if [ -n "$@" ];then
        /apps/srv/php-fpm/bin/php ~/.mycommand/mytime.php "unix_timestamp" "$@"
    else
        echo "参数不能为空"
    fi  
}

from_unixtime(){
    if [ -n "$@" ];then
         /apps/srv/php-fpm/bin/php ~/.mycommand/mytime.php "from_unixtime" "$@"
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
