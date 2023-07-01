let topics = [
    { img: "../img/mahmoud.jpg", description: "لقد تزوج محمود خليل بفضل هذا الموقع", id: "1" },
    { img: "../img/mazen.jpg", description: "لقد تزوج مازن صالح بفضل هذا الموقع", id: "2" },
    { img: "../img/baker.jpg", description: "لقد تزوج بكر الرفاعي بفضل هذا الموقع", id: "3" },
];
setInterval(() => {
    next();
}, 5000);
let index = 0;
function next() {
    index++;
    if (index > 2) {
        index = 0
    }
    let img = document.getElementById("img");
    let description = document.getElementById("description");
    let button = document.getElementById("topic-more");
    let description_substring = topics[index].description.substring(0, 30) + " ...";
    let opacity = 1;
    img.style.opacity = opacity;
    let hide = false
    let hiding = setInterval(() => {
        if (hide == true) {
            opacity += 0.02;
            img.style.opacity = opacity;
            if (img.style.opacity >= 1) {
                clearInterval(hiding);
            }
        } else {
            opacity -= 0.02;
            img.style.opacity = opacity;
            if (img.style.opacity <= 0) {
                img.src = topics[index].img;
                description.innerText = description_substring;
                button.value = topics[index].id;
                hide = true;
            }
        }
    }, 1);
}

function prev() {
    index--;
    if (index < 0) {
        index = 2;
    }
    let img = document.getElementById("img");
    let description = document.getElementById("description");
    let button = document.getElementById("topic-more");
    let description_substring = topics[index].description.substring(0, 30) + " ...";
    let opacity = 1;
    img.style.opacity = opacity;
    let hide = false
    let hiding = setInterval(() => {
        if (hide == true) {
            opacity += 0.02;
            img.style.opacity = opacity;
            if (img.style.opacity >= 1) {
                clearInterval(hiding);
            }
        } else {
            opacity -= 0.02;
            img.style.opacity = opacity;
            if (img.style.opacity <= 0) {
                img.src = topics[index].img;
                description.innerText = description_substring;
                button.value = topics[index].id;
                hide = true;
            }
        }
    }, 1);
}

function show_menu() {
    // console.log(document.getElementById("menu").style.width)
    document.getElementById("menu").style.width = 100 + "%";
}

function hide_menu() {
    // console.log(document.getElementById("menu").style.width)
    document.getElementById("menu").style.width = 0 + "%";
}
