<?php
require('../controllers/conn.php');

if($_POST) {
    var_dump($_REQUEST);

    $form=$_REQUEST;
    $searchValue = (int)$form['quizId']+1;
    $consulta=$conexion->prepare("SELECT id, pregunta, respuesta1, respuesta2, respuesta3, respuesta4 FROM quiz WHERE id=".$searchValue."");
    $consulta->execute();
    $resultado = $consulta->fetch(PDO::FETCH_ASSOC);
    
    // enviamos el resultado
    echo "
    <h2>".$resultado['pregunta']."</h2>
    <input type='number' style='display:none;' name='quizId' id='quizId' value='".$resultado['id']."'><br>
    <input type='radio' name='encuesta' id='encuesta' value='1'>".$resultado['respuesta1']."<br>
    <input type='radio' name='encuesta' id='encuesta' value='2'>".$resultado['respuesta2']."<br>
    <input type='radio' name='encuesta' id='encuesta' value='3'>".$resultado['respuesta3']."<br>
    <input type='radio' name='encuesta' id='encuesta' value='3'>".$resultado['respuesta4']."<br>
    <input type='submit' value='Enviar' class='boton' id='btenviar'>";
}