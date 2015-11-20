#!/bin/bash
#在.bashrc包含此文件
if [ -f "~/.mycommand/db.sh" ];then
	. ~/.mycommand/db.sh
fi
. ~/.mycommand/command.sh
