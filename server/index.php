<?php 


$people_json = file_get_contents('./shit.json');
$decoded_json = json_decode($people_json, false);
echo $decoded_json->xd;


?>
