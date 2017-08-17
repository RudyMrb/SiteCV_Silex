// window.onload = function () {
//     'use strict';
//
//     var progreeBar = document.getElementsByClassName("progress");
//
//         progreeBar[0].style.width = "78%";
//         progreeBar[1].style.width = "76%";
//         progreeBar[2].style.width = "30%";
//         progreeBar[3].style.width = "60%";
//         progreeBar[4].style.width = "67%";
//         progreeBar[5].style.width = "40%";
//
// };

// $($('#competence').attr('href')).offset().top

$(window).scroll(function() {
  var scroll = $(window).scrollTop();
  if ( scroll >= $('#competence').offset().top ) {
    var progreeBar = document.getElementsByClassName("progress");

    progreeBar[0].style.width = "78%";
    progreeBar[1].style.width = "76%";
    progreeBar[2].style.width = "30%";
    progreeBar[3].style.width = "60%";
    progreeBar[4].style.width = "67%";
    progreeBar[5].style.width = "40%";
  }
});

$(window).scroll(function() {
  var scroll = $(window).scrollTop();
  if (scroll >= $('#about').offset().top) {

  }
});


$(".typed").typed({
  strings: [ "Intégrateur - Développeur Web", "Volontaire - Curieux - Ambitieux"],
  typeSpeed: 50,
  loop: true,
  startDelay: 50
});
