$(document).ready(function() {
    // small menu that appears on smaller screen sizes (see media queries for additional control)
    $('#menu-show').click(function() {
        $('header.left').slideToggle();
    });

    //modal carousel function, if images are uploaded
    $(".owl-carousel").owlCarousel({
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 2,
      itemsDesktop : [1199,2],
      itemsDesktopSmall : [979,2]
    });

    $(".owl-carousel2").owlCarousel({
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 1,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [979,1]
    });

    // modal resizing function
    $(window).resize(function() {
        if ($(window).width() > 751) {
            if(window.location.href.indexOf("admin") === -1) {
                if($('header.left').css('display', 'none')) {
                $('header.left').removeAttr('style');            
                }
            } 
        };
    });
});



