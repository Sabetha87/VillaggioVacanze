﻿//function reveal() {
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
    
        document.querySelectorAll(".reveal")[0].classList.add("active");

    
}
window.addEventListener("scroll", reveal);


$(document).ready(function () {
    $('#dtBasicExample').DataTable();
    $('.dataTables_length').addClass('bs-select');
});






document.querySelectorAll(".nav-link").forEach((link) => {
    if (link.href === window.location.href) {
        link.classList.add("active");
        link.setAttribute("aria-current", "page");
    }
});