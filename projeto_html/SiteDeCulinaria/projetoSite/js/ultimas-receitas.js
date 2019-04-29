function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav-PW1") {
        x.className += " responsive";
    } else {
        x.className = "topnav-PW1";
    }
}