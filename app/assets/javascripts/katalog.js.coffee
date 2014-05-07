# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).load ->
  if $(window).width() > 720
    $(".catalog-sidebar-menu-wrapper").css height: (($(".catalog-page-items-wrapper").height() + 170) + "px")

$(window).resize ->
  if $(window).width() > 720
    $(".catalog-sidebar-menu-wrapper").css height: (($(".catalog-page-items-wrapper").height() + 170) + "px")
  else
    if $(window).width() <= 720
      $(".catalog-sidebar-menu-wrapper").css("height", "100px")


$(document).ready ->
# ================================================= calc and return items in cart begin
  field_count = $('div.table-item-coll-count span').text()

#  alert(field_count)

#  ==================================================================== end calc
  if $(window).width() > 720
    $(".catalog-sidebar-menu-wrapper").css height: (($(".catalog-page-items-wrapper").height() + 170) + "px")
#follow plugin
  $("#carts").jfollow "#followbox", 20

#  Katalog treeview menu
  divdbl = $("ul")
  rotat270 =  $(".group-menu-item-arrow-second img")
  $(".catalog-sidebar-menu ul li img:last-of-type").click ->
    divdbl.toggleClass "dbl"
    rotat270.toggleClass "rot270"

  $("#browser").treeview
    animated: "normal"
    persist: "cookie"

  $("#navigation").treeview
    collapsed: true
    unique: true
    persist: "location"


  $("#samplebutton").click ->
    branches = $("<li><span class='folder'>New Sublist</span><ul>" + "<li><span class='file'>Item1</span></li>" + "<li><span class='file'>Item2</span></li></ul></li>").appendTo("#browser")
    $("#browser").treeview add: branches

  url = document.location.href
  $.each $(".catalog-sidebar-menu .last-category-level a"), ->
    $(this).addClass " active_subcategory_menu"  unless url.indexOf(@href) is -1

#   Deleting attr href for link with class selected
  $(".selected").removeAttr("href").css "cursor", "pointer"


  $('.hitarea').addClass(' collapsable-hitarea')
  $('.loading-group-sub-menu').css('display','block')






