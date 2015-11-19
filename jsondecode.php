<?php
/**
 * File Name:jsondecode.php
 * @author              $Author:lukang$
 * @email               $lukang@baijiahulian.com$
*/

$params = $argv[1];
$json = json_decode($params,true);
if ($json !== null) {
    var_export($json);
    echo "\n";
} else {
    echo 'error';
}
