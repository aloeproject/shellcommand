#!/bin/bash
#在.bashrc包含此文件
COMMOD_PATH="~/.mycommand"
if [ -f /.mycommand/db.sh ];then
	. /.mycommand/db.sh
fi
source ~/.mycommand/function.sh

source ~/.mycommand/command.sh
