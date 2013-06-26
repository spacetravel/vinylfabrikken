// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui.min
//= require jquery_ujs
//= require bootstrap

//= require_tree .



$( document ).ready(function(){

   $('#flash').delay(500).fadeIn('normal', function() {
      $(this).delay(2500).fadeOut();
   });

    // Slider functions for order form
    $('.toggle-button').click(function() {

      $(this).next('.toggle-info').slideToggle('slow', function() {

      });
    });
 
   // Slider functions for order form
    $('.toggle-button').click(function() {
         $(this).find('#plusminusicon').toggleClass('icon-plus-sign');
         $(this).find('#plusminusicon').toggleClass('icon-minus-sign');
    });


    // order status tekst

    $('.order_status_desc').hide();
    $('.order_status').mouseenter(function(evt)  {
       evt.preventDefault();
       $(this).next('.order_status_desc').toggle();
     }); 


    $('.order_status').mouseleave(function(evt)  {
       evt.preventDefault();
       $(this).next('.order_status_desc').toggle();
     });
    
    // Info boxes for order form
    $('.infoBox').hide();
    
    $('.order_info').mouseenter(function(evt)  {
       evt.preventDefault();
       $(this).find('.infoBox').toggle();
     }); 


    $('.order_info').mouseleave(function(evt)  {
       evt.preventDefault();
       $(this).find('.infoBox').toggle();
     });
});