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
//= require jquery_ujs
//= require bootstrap
//= require_tree .



jQuery(document).ready(function() {

	// Slider functions for order form
	$('.toggle-button').click(function() {
	    $(this).next('.toggle-info').slideToggle('slow', function() {
	    	// Animation complete.
	    });
		$(this).find('#plusminusicon').toggleClass('icon-plus-sign');
		$(this).find('#plusminusicon').toggleClass('icon-minus-sign');
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

/*
function show(object)
{
var obj = document.getElementById(object);
obj.style.visibility = 'visible';
}

function hide(object)
{
var obj = document.getElementById(object);
obj.style.visibility = 'hidden';
}*/