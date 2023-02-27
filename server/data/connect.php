<?php

// environment variables 
$people_json = file_get_contents('../shit.json');
$env = json_decode($people_json, false);

// definind mysql connection
$database = $env->mysqlDB;
$mysqli = new mysqli($env->mysqlHost, $env->mysqlUser, $env->mysqlPassword,$env->mysqlDB); 

if (!$mysqli) {
    die('Nem lehet csatlakozni a MySQL-hez ' . $mysqli->connect_errno);
}
$db = $mysqli->select_db($database);
if (!$db) {
   die('Nem lehet megnyitni az adatbázist: ' . $mysqli->connect_errno);
}

?>