<?php
#Change secret_key value to a secure combination of characters
#
#Do never use this script on public available pi-star instances.
#There is NO input sanitizing in this script.

$secret_key = "S3cr3t!";
$ric 		= $_REQUEST['ric'];
$msg 		= $_REQUEST['msg'];
$key 		= $_REQUEST['key'];
$snd 		= 'sudo RemoteCommand 7643 page'.$ric.' "'.$msg.'"';
	
if($secret_key != $key){
	echo "error";
	exit();
}
else{
	exec($snd);
	echo $snd . " send!";
	exit();
}
?>