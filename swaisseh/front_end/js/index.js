let images = ["img/s1.jpg", "img/s2.jpg", "img/s3.jpg"]
    let index = 0;
    function next() {
        index++;
        if (index > 2) {
            index = 0
        }
        let img = document.getElementById("img");
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
                    img.src = images[index];
                    hide = true;
                }
            }
        }, 1);
    }

    function prev() {
        index--;
        if (index <0) {
            index = 2;
        }
        let img = document.getElementById("img");
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
                    img.src = images[index];
                    hide = true;
                }
            }
        }, 1);
    }