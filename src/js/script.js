let form = document.getElementById("form");
let question = document.getElementById("question");
let c0 = document.getElementById("btn0");
let c1 = document.getElementById("btn1");
let c2 = document.getElementById("btn2");
let c3 = document.getElementById("bt3");

displayQuestions();
function displayQuestions(e) {
    fetch("../controllers/gameController.php", {
        method: "GET",
        body: e
    })
    .then((response) => response.text())
    .then((response) => {
        result.innerHTML = response;
    });
}

form.addEventListener("submit", (e) => {
    e.preventDefault();
    fetch("answersController.php", {
        method: "POST",
        body: new FormData(form),
    })
    .then((response) => response.text())
    .then((datos)=> {
        if(datos == "ok") {
            form.reset();
            displayQuestions();
        }
    });
});