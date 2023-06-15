//function reveal() {
//    var reveals = document.querySelectorAll(".reveal");
//    for (var i = 0; i < reveals.length; i++) {
//        var windowHeight = window.innerHeight;
//        var elementTop = reveals[i].getBoundingClientRect().top;
//        var elementVisible = 150;
//        if (elementTop < windowHeight - elementVisible) {
//            reveals[i].classList.add("active");
//        } else {
//            reveals[i].classList.remove("active");
//        }
//    }
//}

function reveal() {
    var reveals = document.querySelectorAll(".reveal");
    for (var i = 1; i < reveals.length; i++) {
        var windowHeight = window.innerHeight;
        var elementTop = reveals[i].getBoundingClientRect().top;
        var elementVisible = 10;
        if (elementTop < windowHeight - elementVisible) {
            reveals[i].classList.add("active");
        } else {
            reveals[i].classList.remove("active");
        }
    }
}


window.onload = (event) => {
    setTimeout(function () {
        document.querySelectorAll(".reveal")[0].classList.add("active");
    }, 2000);
    
}
window.addEventListener("scroll", reveal);
