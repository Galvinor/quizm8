<?php
//$conexion=null;
$servidor = 'localhost';
$bd = 'quizm8db';
$user = 'root';
$pass = 'root';

try {
    $conexion = new PDO('mysql:host='.$servidor.';dbname='.$bd,$user,$pass);
} catch(PDOException $e) {
    echo "Error de conexión";
    exit;
}

return $conexion;
