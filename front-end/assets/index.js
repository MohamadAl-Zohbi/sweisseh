let open = false;

function openMenu(){
    if (open) {
        document.getElementById("openmenu").style.display = "none";
        open = false;
    } else {
        document.getElementById("openmenu").style.display = "block";
        open = true;
    }
}