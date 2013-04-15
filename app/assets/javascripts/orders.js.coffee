# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('#toggle-button').click ->
  $next = $(this).next('#toggle-info');
  $('"toggle-info')
    .not($next)
    .slideUp("slow")
    .prev('"toggle-button')
  $next.slideToggle("slow")
