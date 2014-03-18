# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Type here!

#$(document).ready ->
#   executes when HTML-Document is loaded and DOM is ready
#   alert "document is ready"


#$(document).on 'ready page:load', ->
$(document).ready ->

  $(".bx-slider").bxSlider
    mode: 'fade'
#    auto: true
    onSliderLoad: ->
      $('.image-layer1').addClass('animated slideInLeft')
      $('.image-layer2').addClass('animated slideInDown')
      $('.container h1').addClass('animated slideInDown')
      $('.container p').addClass('animated slideInDown')
#  Colorbox for Products img
  $(".item-top-left-part .image a").colorbox rel: "col"
  # Colorbox
#  $("#login-form-inner").colorbox    # Colorbox for call order form
#    inline: true
#    width: "60%"
#    href:"#login-form-inner"
#    open:true
  # Colorbox
#  $("#call-to-order").colorbox    # Colorbox for call order form
#      inline: true
#      width: "75%"
  # Colorbox
  $("#shopping-cart").colorbox    # Colorbox for shopping-cart-form
    inline: true
    width: "80%"

  cartdb = $(".call-order-wrapper")
  $(".call_to_order a").click ->
    cartdb.toggleClass " call-order-db"
    $(".header_wraper").toggleClass " blur"
    $("#content-wrapper").toggleClass " blur"
    $(".like-social-buttons").toggleClass " blur"
    $(".friendly_logo_wrapper").toggleClass " blur"
    $(".info_block_wrapper").toggleClass " blur"
    $(".footer_wrapper").toggleClass " blur"



  # load facebook social button
  ((d, s, id) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    return  if d.getElementById(id)
    js = d.createElement(s)
    js.id = id
    js.src = "//connect.facebook.net/uk_UA/all.js#xfbml=1&appId=111380162290131"
    fjs.parentNode.insertBefore js, fjs
  ) document, "script", "facebook-jssdk"




  $ ->
    $container = $("#bestseller-items")
    $articles = $container.children(".item")
    timeout = undefined
    $articles.on "mouseenter", (event) ->
      $article = $(this)
      clearTimeout timeout
      timeout = setTimeout(->
        return false  if $article.hasClass("active")
        $(".title_wrapper").addClass("blur_back")
        $(".content_menu_wrapper").addClass("blur_back")
        $(".header_wraper").addClass("blur_back")
        $(".main_menu").addClass("blur_back")
        $(".main_banner").addClass("blur_back")
        $(".nbs-flexisel-nav-left").addClass("blur_back")
        $(".nbs-flexisel-nav-right").addClass("blur_back")
        $(".novelty").addClass("blur_back")
        $(".announcements_and_articles").addClass("blur_back")
        $(".friendly_logo_wrapper").addClass("blur_back")
        $(".info_block_wrapper").addClass("blur_back")
        $(".footer_wrapper").addClass("blur_back")
        $articles.not($article.removeClass("blur_back").addClass("active")).removeClass("active").addClass "blur_back"
      , 600)

    $container.on "mouseleave", (event) ->
      clearTimeout timeout
      $articles.removeClass "active blur_back"
      $(".title_wrapper").removeClass("blur_back")
      $(".content_menu_wrapper").removeClass("blur_back")
      $(".header_wraper").removeClass("blur_back")
      $(".main_menu").removeClass("blur_back")
      $(".main_banner").removeClass("blur_back")
      $(".novelty").removeClass("blur_back")
      $(".nbs-flexisel-nav-left").removeClass("blur_back")
      $(".nbs-flexisel-nav-right").removeClass("blur_back")
      $(".announcements_and_articles").removeClass("blur_back")
      $(".friendly_logo_wrapper").removeClass("blur_back")
      $(".info_block_wrapper").removeClass("blur_back")
      $(".footer_wrapper").removeClass("blur_back")


  # main menu hover bounce variant with animate.css

  $(".header_wraper nav .about-us a").hover (->
    $(".about-us-hover-effect").show()
    $(".about-us-hover-effect img").addClass("animated bounce")
  ), ->
    $(".about-us-hover-effect img").removeClass("animated bounce")
    $(".about-us-hover-effect").hide()


  $(".header_wraper nav .katalog a").hover (->
    $(".katalog-hover-effect").show()
    $(".katalog-hover-effect img").removeClass().addClass("animated bounce")
  ), ->
    $(".katalog-hover-effect").hide()
    $(".katalog-hover-effect img").removeClass("animated bounce")


  $(".header_wraper nav .actsii a").hover (->
    $(".actsii-hover-effect").show()
    $(".actsii-hover-effect img").removeClass().addClass("animated bounce")
  ), ->
    $(".actsii-hover-effect").hide()
    $(".actsii-hover-effect img").removeClass("animated bounce")


  $(".header_wraper nav .publications a").hover (->
    $(".publications-hover-effect").show()
    $(".publications-hover-effect img").addClass("animated bounce")
  ), ->
    $(".publications-hover-effect").hide()
    $(".publications-hover-effect img").removeClass("animated bounce")

  $(".header_wraper nav .contacts a").hover (->
    $(".contacts-hover-effect").show()
    $(".contacts-hover-effect img").addClass("animated bounce")
  ), ->
    $(".contacts-hover-effect").hide()
    $(".contacts-hover-effect img").removeClass("animated bounce")


# Bestsellers carousel
  $("#bestseller-items").flexisel  # Create bestseller carousel
    enableResponsiveBreakpoints: true
    visibleItems: 4
    animationSpeed: 200
    responsiveBreakpoints:
      portrait:
        changePoint: 480
        visibleItems: 1

      landscape:
        changePoint: 640
        visibleItems: 2

      tablet:
        changePoint: 768
        visibleItems: 3


  #	Responsive layout, resizing the items
  $("#friendly-items").carouFredSel # Create friendly carousel
    responsive: true
    width: "100%"
    scroll: 1
#    auto: false
    items:
      width: 137
      height: 55
    #	height: '30%',	//	optionally resize item-height
      visible:
        min: 1
        max: 6

  $(".voronin_studio_img").hover (->
    setTimeout (->
      $(".voronin_studio_img .voronin-studio-lable").hide()
      $(".voronin_studio_img .hover-voronin-studio-lable").show()
    ), 150
    $(".voronin_studio_text a").removeClass().addClass("hover-voronin-studio-link")
  ), ->
    $(".voronin_studio_img .hover-voronin-studio-lable").hide()
    $(".voronin_studio_img .voronin-studio-lable").show()
    $(".voronin_studio_text a").removeClass("hover-voronin-studio-link")

# animate to button im call order form  in cycle on hover
  $("#call-to-order-form #submit").hover (->
    if $(".button-form img").hasClass("animated slideInLeft")
      $(".button-form img").removeClass("animated slideInLeft").addClass "animated slideInLeft"
    else
      $(".button-form img").removeClass("animated slideInLeft").addClass "animated slideInLeft"
  ), ->
    $(".button-form img").removeClass("animated slideInLeft")

# animate to button im call order form  in cycle on hover
#  $(".form-actions input").hover (->
#    if $(".form-actions img").hasClass("animated slideInLeft")
#      $(".form-actions img").removeClass("animated slideInLeft").addClass "animated slideInLeft"
#    else
#      $(".form-actions img").removeClass("animated slideInLeft").addClass "animated slideInLeft"
#  ), ->
#    $(".form-actions img").removeClass("animated slideInLeft")

  mmbl = $(".main_menu")
#  hw_marg_bot = $(".header_wraper")
  $("#mobile-menu-button").click ->
    mmbl.toggleClass "mmbl"
#    hw_marg_bot.toggleClass "hw_marg_bot"
#    $(".add-too-cart").addClass(" show-add-too-cart-button")

  lat = 49.840900
  lng = 24.034305
  myLatlng = new google.maps.LatLng(lat, lng)
  myOptions =
    zoom: 17
    center: myLatlng
    scrollwheel: false
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("map"), myOptions)
  marker = new google.maps.Marker(
    position: myLatlng
    map: map
    title: "Текст \"Назва\""
  )

  url = document.location.href
  $.each $(".main_menu li a"), ->
    $(this).addClass " .active_menu"  unless url.indexOf(@href) is -1







$(window).load ->
  page = window.location.pathname
  if page is "/users/sign_in" or page is "/users/sign_in/"
    $(".header_wraper").removeClass " blur"
    $(".like-social-buttons").removeClass " blur"
    $(".friendly_logo_wrapper").removeClass " blur"
    $(".info_block_wrapper").removeClass " blur"
    $(".footer_wrapper").removeClass " blur"

    $(".header_wraper").addClass " blur"
    $(".like-social-buttons").addClass " blur"
    $(".friendly_logo_wrapper").addClass " blur"
    $(".info_block_wrapper").addClass " blur"
    $(".footer_wrapper").addClass " blur"



