<?php
//$conexion=null;
$servidor='localhost';
$bd='quizm8db';
$user='javier';
$pass='javier';

try {
    $conexion=new PDO('mysql:host='.$servidor.';dbname='.$bd,$user,$pass);
} catch(PDOException $e) {
    echo "Error de conexión";
    exit;
}

return $conexion;

?>