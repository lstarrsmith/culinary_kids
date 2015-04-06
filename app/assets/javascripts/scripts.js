$(document).ready(function() {
  $('#menu-show').click(function() {
      $('header.left').slideToggle();
  });

  $(window).resize(function() {
      if ($(window).width() > 751) {
          if(window.location.href.indexOf("admin") === -1) {
              if($('header.left').css('display', 'none')) {
              $('header.left').removeAttr('style');            
              }
          }

         
      };
  });
})



// $(document).ready(function() {

    
//     checkSize();
//     $('#menu-show').click(function() {
//                 $('header.left').slideToggle();
//             });
//     $(window).resize(function() {
//         checkSize();
        
        
//     });

//     function checkSize() {
        
//         if ($(window).width() <= 1199) {
            
//             $('li#nav-offering').addClass('active');
//             $('li#nav-offering.active').click(function() {
//                 $('header.left').slideUp();
//             });

//         } else if ($(window).width() >= 1200) {

//             if($('header.left').css('display', 'none')) {
//                 $('header.left').removeAttr('style');
//             }
//             $('li#nav-offering.active').removeClass('active');
//             //$('li#nav-offering.active').on('click', function(:void){});
//         };
//     }
// })



