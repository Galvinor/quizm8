<?php

require '../methods/gameMethods.php';
require 'conn.php';

$query = "select pregunta from quiz;";
$query = $conexion->prepare($query);
$query->execute();

$result = $query->fetchAll(PDO::FETCH_ASSOC);

foreach($result as $data) {
    echo '<div class="question">
            <p id="question">'. $data .'</p> 
        </div>';
}