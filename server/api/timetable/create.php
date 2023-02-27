<?php

$body = file_get_contents('php://input');
$napok = ["hetfo","kedd","szerda","csutortok","pentek"]

// for in napok
// mysql.add body->i


require_once("connect.php");
//var_dump($_POST);
$dolgozo = intval($_POST['dolgozo']);
$kezdes = $_POST['kezdes'];
$befejezes = $_POST['befejezes'];
$message = [];
/* Ellenőrzés */
$sql = "SELECT count(*) FROM `dolgozo` WHERE `dolgozo_azonosito` = ?";
$stmt = $mysqli->prepare($sql);

/* bind parameters for markers */
$stmt->bind_param("i", $dolgozo);

/* execute query */
$stmt->execute();
$stmt->store_result();

$sorok = $stmt->num_rows;
if($sorok == 1){ 
/*
$sorok = "1"
$sorok == 1 => TRUE
 $sorok === 1 => FALSE
*/
/* create a prepared statement */
$sql = "INSERT INTO `munkaido` (`AZ`, `dolgozo_azonosito`, `munkaido_kezdete`, `munkaido_vege`, `hianyzas_Az`)
 VALUES (NULL, ?, ?, ?, 0)";
$stmt = $mysqli->prepare($sql);

/* bind parameters for markers */
$stmt->bind_param("iss", $dolgozo,$kezdes,$befejezes);

/* execute query */
$stmt->execute();
    $message['kod'] = 1;
    $message['uzenet'] = "Sikeres beillesztés!";
}else{
    $message['kod'] = -1;
    $message['uzenet'] = "Beszúrási hiba!";    
}
echo json_encode($message);
/* bind result variables */
// $stmt->bind_result($idopont,$hozzaszolas,$emailcim);

/* fetch value */
/*
while ($stmt->fetch()) {
    printf("%s %s %s<br>", $emailcim, $hozzaszolas,$idopont);
}
*/
?>