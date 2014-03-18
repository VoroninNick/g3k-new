# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$(document).on 'ready page:load', ->
$(document).ready ->
  $("#slides3").superslides   # Main banner
    play: true
    delay: 10000
    animation: 'fade'
    animation_speed: 10000
    animation_easing: 'swing'