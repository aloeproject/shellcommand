#########################################################################
# File Name: db.sh
# Author: lukang
# mail: lukang@baijiahulian.com
# Created Time: Thu 24 Sep 2015 10:24:29 AM CST
#########################################################################
#!/bin/bash


cdb(){
	db="mysql -h10.140.124.82 -P3306 -ucdb -pMhxzKhl8888";
	sql="$1";
	if [ -n "$sql" ];then
		$db -Bse "$sql"
	else
		$db	
	fi
}

paydb(){
	db="mysql -h10.140.124.82 -P3306 -upay -pMhxzKhl8888";
	sql="$1";
	if [ -n "$sql" ];then
		$db -Bse "$sql"
	else
		$db	
	fi
}

yydb(){
	db="mysql -h10.140.124.82 -P3306 -uyunying -pMhxzKhl8888";
	sql="$1";
	if [ -n "$sql" ];then
		$db -Bse "$sql"
	else
		$db	
	fi
}

carddb(){
	db="mysql -h10.140.124.82 -P3306 -ucard -pMhxzKhl8888";
	sql="$1";
	if [ -n "$sql" ];then
		$db -Bse "$sql"
	else
		$db	
	fi
}
