$(document).ready(function(){


    // Slider functions for order form
    $('.toggle-button').click(function() {

        $(this).next('.toggle-info').slideToggle('slow', function() {
          $(this).next('#plusminusicon').toggleClass('icon-plus-sign');
          $(this).next('#plusminusicon').toggleClass('icon-minus-sign');
        });

    });
    
    // Info boxes for order form
    $('.infoBox').hide();
    
    $('.order_info').mouseenter(function(evt)  {
       evt.preventDefault();
       $(this).next('.infoBox').toggle();
     }); 


    $('.order_info').mouseleave(function(evt)  {
       evt.preventDefault();
       $(this).next('.infoBox').toggle();
     });
});
