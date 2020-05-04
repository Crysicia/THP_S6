window.onload = function () {
    setTimeout(function () {
        if (confirm("Hey le site xxxvidsxxx est trop bien. Tu veux bien aller dessus pls ?")) {
            window.location.replace("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
        };
    }, 10000);
};

let psychedelic = false;

function lsd() {
    if (!psychedelic) {
        document.getElementsByTagName("body")[0].style.backgroundColor = "magenta";
        document.querySelectorAll("p").forEach(e => {
            e.style.color = "blue";
            e.style.fontFamily = "Papyrus";
        });
        document.querySelectorAll("h1, h2").forEach(e => {
            e.style.color = "green";
            e.style.fontFamily = "Comic sans MS";
        });
        document.getElementById("lsd").innerHTML = "Disable psychedelic mode";
        psychedelic = true;
    } else {
        document.getElementsByTagName("body")[0].style.backgroundColor = "";
        document.querySelectorAll("p").forEach(e => {
            e.style.color = "";
            e.style.fontFamily = "";
        });
        document.querySelectorAll("h1, h2").forEach(e => {
            e.style.color = "";
            e.style.fontFamily = "";
        });
        document.getElementById("lsd").innerHTML = "Enable psychedelic mode";
        psychedelic = false;
    };

};
