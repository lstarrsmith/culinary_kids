$(document).ready(function() {
  // $('#menu-show, #nav-offering, #nav-story , #nav-testimonials , #nav-blog , #nav-blog').click(function() {
 //        $('header').slideToggle();
 //    });
  $('#menu-show').click(function() {
        $('header').slideToggle();
    });

    $(window).resize(function() {
        if ($(window).width() > 751) {
           if($('header').css('display', 'none')) {
                $('header').removeAttr('style');            
           }
        };
    });


})