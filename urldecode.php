<?php
/**
 * File Name:urldecode.php
 * @author              $Author:lukang$
 * @email               $lukang@baijiahulian.com$
*/

$params = $argv[1];
$str = urldecode($params);
if ($str !== null) {
	    echo $str."\n";
} else {
	    echo 'error';
}
