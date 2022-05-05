let buttons = document.querySelectorAll("input");
let form = document.getElementById("form");

count = 0;

if(count == 0) {
    let formData = new FormData();
    formData.append('quizId', count);
    fetch("src/methods/load.php", {
        method: "POST",
        body: formData.get('quizId'),
    })
    .then((response) => response.text())
    .then((datos)=> {
        if(datos == "ok") {
            form.reset();
        }
        });
    count++;
}

buttons.forEach(button => {
    button.addEventListener("click", (e) => {
        e.preventDefault();
        let formData = new FormData();
        formData.append('quizId', count);
        fetch("src/methods/load.php", {
            method: "POST",
            body: formData.get('quizId'),
        })
        .then((response) => response.text())
        .then((datos)=> {
            if(datos == "ok") {
                form.reset();
            }
        });
        count++;
    });
});
