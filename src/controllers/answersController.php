<?php

require '../methods/gameMethods.php';
require 'conn.php';

$query1 = "select respuesta1 from quiz;";
$query2 = "select respuesta2 from quiz;";
$query3 = "select respuesta3 from quiz;";
$query4 = "select respuesta4 from quiz;";

$query1 = $conexion->prepare($query1);
$query2 = $conexion->prepare($query2);
$query3 = $conexion->prepare($query3);
$query4 = $conexion->prepare($query4);

$query1->execute();
$query2->execute();
$query3->execute();
$query4->execute();

$result = $query->fetchAll(PDO::FETCH_ASSOC);

foreach($result as $data) {
    
}