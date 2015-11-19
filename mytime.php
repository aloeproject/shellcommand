<?php
/**
 * File Name:mytime.php
 * @author              $Author:lukang$
 * @email               $lukang@baijiahulian.com$
*/

$type = $argv[1];
$params = $argv[2];

if ($type == 'unix_timestamp') {
	    echo strtotime($params)."\n";
}

if ($type == 'from_unixtime') {
	    echo date("Y-m-d H:i:s",$params)."\n";
}
