<?php

$correctAnswers = ["Demon's Souls","Big Boss","Varré","Samus Aran","Arthas Menethil","Dracula",
"Halo","Adolf Hitler","Todas son correctas","FFIV"];

function checkAnswer(string $answer, int $questionId){

    global $correctAnswers;

    if ($answer !=  $correctAnswers[$questionId-1]){
        return false;
    }
    return true;
}




?>