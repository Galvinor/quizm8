<?php

$correctAnswers = ["Demon's Souls","Big Boss","Varré","Samus Aran","Arthas Menethil","Dracula",
"Halo","Adolf Hitler","Todas son correctas","FFIV"];

$victoryCondition = 7;

function checkAnswer(string $answer, int $questionId){

    global $correctAnswers;

    if ($answer ==  $correctAnswers[$questionId-1]){
        return true;
    }
    return false;
}

function victoryCheck(int $totalCorrect){

    global $victoryCondition;

    if ($totalCorrect != null && $totalCorrect < $victoryCondition) {
        return false;
    }
    return true;
}




?>