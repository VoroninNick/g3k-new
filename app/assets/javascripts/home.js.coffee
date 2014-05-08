# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Type here!

#$(document).ready ->
#   executes when HTML-Document is loaded and DOM is ready
#   alert "document is ready"


$(document).ready ->
  gFirstNameValue = ''
  gLastNameValue = ''
  gPhoneValue = ''
  gEmailValue = ''
  gAddressValue = ''
  gMethodOfPayment  = ''
  gTitle = ''

  totalValue = $('.cart-result-show span').text()
  $(".bx-slider").bxSlider
    mode: 'fade'
    auto: true
    onSliderLoad: ->
      $('.image-layer1').addClass('animated slideInLeft')
      $('.image-layer2').addClass('animated slideInDown')
      $('.container h1').addClass('animated slideInDown')
      $('.container p').addClass('animated slideInDown')
#  Colorbox for Products img
  $(".item-top-left-part .image a").colorbox rel: "col"
  # Colorbox
  $("#shopping-cart").colorbox    # Colorbox for shopping-cart-form
    inline: true
    width: "80%"
  $("#linkToTermsOfDeliveryAndPayment").colorbox    # Colorbox for shopping-cart-form
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

# order products  /cart
  $(".list_of_products_wrapper .cart-checkout-buttons-next .form-actions").click ->
    $('.list_of_products_wrapper').addClass(' dn')
    $('.method_of_delivery_and_payment_wrapper').removeClass(' dn')

    $('.method_of_delivery_and_payment h1').addClass(' active-status-order-form')
    $('.list_of_products h1').removeClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').addClass(' method-of-delivery-and-payment-active-status-order-form')

    $('.list_of_products .itm .ao1').removeClass(' dn')
    $('.list_of_products .itm .ao2').addClass(' dn')

    $('.method_of_delivery_and_payment .itm .ao2').removeClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao1').addClass(' dn')

    $('.method_of_delivery_and_payment .itm').removeClass(' rr')

    $('#colorbox').addClass(' modapw')
#    scroll top
    $("html, body").animate
      scrollTop: 0
      , 600
      false




  $('.method_of_delivery_and_payment_wrapper .cart-checkout-buttons-next .form-actions').click ->
    $('.method_of_delivery_and_payment_wrapper').addClass(' dn')
    $('.confirmation_wrapper').removeClass(' dn')

    $('.confirmation h1').addClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').removeClass(' active-status-order-form')

    $('.method_of_delivery_and_payment .itm .ao1').removeClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao2').addClass(' dn')

    $('.confirmation .itm .ao2').removeClass(' dn')
    $('.confirmation .itm .ao1').addClass(' dn')

    $('.confirmation .itm').removeClass(' rr')

    #    scroll top
    $("html, body").animate
      scrollTop: 0
      , 600
      false

    $('.table-item').each ->
      $item = $(this)
      if(!$item.hasClass('added'))
        $h1 = $item.find('.about-item-title h1')
        $count_tag = $item.find('.table-item-coll-count span')
        title = $h1.text() + " — " + $count_tag.text()

        $dest = $('.dataProduct')

        $dest.append('<h2>'+title+' шт'+'</h2>')
        gTitle = title
        $item.addClass('added')

    firstNameValue = $('#name').val()
    lastNameValue = $('#last_name').val()
    phoneValue = $('#phone').val()
    emailValue = $('#email').val()
    addressValue = $('#address').val()
    methodOfPayment  = $('input:checkbox[name=payment]:checked').val()
    totalValue = $('.cart-result-show span').text()

    gFirstNameValue = firstNameValue
    gLastNameValue = lastNameValue
    gPhoneValue = phoneValue
    gEmailValue = emailValue
    gAddressValue = addressValue
    gMethodOfPayment  = methodOfPayment


    $('.firstNameValue').text(firstNameValue)
    $('.lastNameValue').text(lastNameValue)
    $('.phoneValue').text(phoneValue)
    $('.emailValue').text(emailValue)
    $('.methodOfPaymentValue').text(methodOfPayment)
    $('.dataProduct').append("<h2>"+itemValue+"</h2>")

  $('.confirmation_wrapper .cart-list-products input').click ->
    $('.confirmation_wrapper').addClass(' dn')
    $('.method_of_delivery_and_payment_wrapper').removeClass(' dn')

    $('.confirmation h1').removeClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').addClass(' active-status-order-form')

    $('.confirmation .itm .ao2').addClass(' dn')
    $('.confirmation .itm .ao1').removeClass(' dn')

    $('.confirmation .itm').addClass(' rr')

    $('.method_of_delivery_and_payment .itm .ao1').addClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao2').removeClass(' dn')

    #    scroll top
    $("html, body").animate
      scrollTop: 0
      , 600
      false

  $('.method_of_delivery_and_payment_wrapper .cart-list-products input').click ->
    $('.method_of_delivery_and_payment_wrapper').addClass(' dn')
    $('.list_of_products_wrapper').removeClass(' dn')

    $('.method_of_delivery_and_payment h1').removeClass(' active-status-order-form')
    $('.list_of_products h1').addClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').removeClass(' method-of-delivery-and-payment-active-status-order-form')

    $('.method_of_delivery_and_payment .itm .ao1').removeClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao2').addClass(' dn')

    $('.list_of_products .itm .ao1').addClass(' dn')
    $('.list_of_products .itm .ao2').removeClass(' dn')

    #    scroll top
    $("html, body").animate
      scrollTop: 0
      , 600
      false
#checkbox group
  $("input:checkbox").click ->
    if $(this).is(":checked")
      group = "input:checkbox[name='" + $(this).attr("name") + "']"
      $(group).prop "checked", false
      $(this).prop "checked", true
    else
      $(this).prop "checked", false
    return

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

#checkout status navigation
  $('.list_of_products h1').click ->
    $('.method_of_delivery_and_payment_wrapper').addClass(' dn')
    $('.list_of_products_wrapper').removeClass(' dn')
    $('.confirmation_wrapper').addClass(' dn')

    $('.method_of_delivery_and_payment h1').removeClass(' active-status-order-form')
    $('.list_of_products h1').addClass(' active-status-order-form')
    $('.confirmation h1').removeClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').removeClass(' method-of-delivery-and-payment-active-status-order-form')

    $('.method_of_delivery_and_payment .itm .ao1').removeClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao2').addClass(' dn')

    $('.list_of_products .itm .ao1').addClass(' dn')
    $('.list_of_products .itm .ao2').removeClass(' dn')

    $('.confirmation .itm .ao2').addClass(' dn')
    $('.confirmation .itm .ao1').removeClass(' dn')

    $('.method_of_delivery_and_payment .itm').addClass(' rr')
    $('.confirmation .itm').addClass(' rr')



  $('.method_of_delivery_and_payment h1').click ->
    $('.list_of_products_wrapper').addClass(' dn')
    $('.method_of_delivery_and_payment_wrapper').removeClass(' dn')
    $('.confirmation_wrapper').addClass(' dn')

    $('.method_of_delivery_and_payment h1').addClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').addClass(' method-of-delivery-and-payment-active-status-order-form')
    $('.list_of_products h1').removeClass(' active-status-order-form')

    $('.confirmation h1').removeClass(' active-status-order-form')

    $('.list_of_products .itm .ao1').removeClass(' dn')
    $('.list_of_products .itm .ao2').addClass(' dn')

    $('.method_of_delivery_and_payment .itm .ao2').removeClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao1').addClass(' dn')

    $('.confirmation .itm .ao2').addClass(' dn')
    $('.confirmation .itm .ao1').removeClass(' dn')

    $('.method_of_delivery_and_payment .itm').removeClass(' rr')
    $('.confirmation .itm').addClass(' rr')

    $('#colorbox').addClass(' modapw')


  $('.confirmation h1').click ->
    $('.method_of_delivery_and_payment_wrapper').addClass(' dn')
    $('.confirmation_wrapper').removeClass(' dn')

    $('.confirmation h1').addClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').removeClass(' active-status-order-form')
    $('.list_of_products h1').removeClass(' active-status-order-form')
    $('.method_of_delivery_and_payment h1').addClass(' method-of-delivery-and-payment-active-status-order-form')

    $('.list_of_products .itm .ao1').removeClass(' dn')
    $('.list_of_products .itm .ao2').addClass(' dn')
    $('.list_of_products_wrapper').addClass(' dn')

    $('.method_of_delivery_and_payment .itm .ao1').removeClass(' dn')
    $('.method_of_delivery_and_payment .itm .ao2').addClass(' dn')

    $('.confirmation .itm .ao2').removeClass(' dn')
    $('.confirmation .itm .ao1').addClass(' dn')

    $('.confirmation .itm').removeClass(' rr')
    $('.method_of_delivery_and_payment .itm').removeClass(' rr')

# set data for send order product

  $('.confirmation h1').click ->
    $('.table-item').each ->
      $item = $(this)
      if(!$item.hasClass('added'))
        $h1 = $item.find('.about-item-title h1')
        $count_tag = $item.find('.table-item-coll-count span')
        title = $h1.text() + " — " + $count_tag.text()

        $dest = $('.dataProduct')

        $dest.append('<h2>'+title+' шт'+'</h2>')
        $item.addClass('added')

    firstNameValue = $('#name').val()
    lastNameValue = $('#last_name').val()
    phoneValue = $('#phone').val()
    emailValue = $('#email').val()
    addressValue = $('#address').val()
    methodOfPayment  = $('input:checkbox[name=payment]:checked').val()
    totalValue = $('.cart-result-show span').text()

    gFirstNameValue = firstNameValue
    gLastNameValue = lastNameValue
    gPhoneValue = phoneValue
    gEmailValue = emailValue
    gAddressValue = addressValue
    gMethodOfPayment  = methodOfPayment

    $('.firstNameValue').text(firstNameValue)
    $('.lastNameValue').text(lastNameValue)
    $('.phoneValue').text(phoneValue)
    $('.emailValue').text(emailValue)
    $('.methodOfPaymentValue').text(methodOfPayment)
    $('.dataProduct').append("<h2>"+itemValue+"</h2>")



  $(".buyProduct").click ->
    $('.confirmation_wrapper').addClass(' dn')
    $('.loading_status').removeClass('dn')
    cartId = $('.dn_cart_id').first().text() #get cart id

    valuesToSubmit = {buy_product:{firstName:gFirstNameValue, lastName:gLastNameValue, phone:gPhoneValue, email:gEmailValue, address:gAddressValue, methodOfPayment:gMethodOfPayment, product:gTitle  }}
    $.ajax
      url: '/buy_product'
      type: "POST"
      data: valuesToSubmit
#      dataType: "JSON"
      success: () ->
        $('.loading_status').addClass(' dn')
        $('.cart-content-wrapper').addClass(' dn')
        $('.orderReadyWrapper').removeClass('dn')

        $.ajax
          url: '/del_all'
          type: 'POST'
          data: {cart_id: cartId}
          success: () ->
            $('span#count_items_in_cart').addClass(' dn')

    #act on result.
    false # prevents normal behaviour



#delete item
  $(".cart_delete_item").click ->
    productId = $(this).find('.dn_product_id').text()
    cartId = $(this).find('.dn_cart_id').text()

    totalResult= parseFloat($('span#first_total').text())
    countProduct = parseFloat($('#id'+productId+' '+'.table-item-coll-count span').text())
    priceProduct = parseFloat($('#id'+productId+' '+'.table-item-coll-price p span:first-child').text())
    tempVar = countProduct*priceProduct
    resultPrice = totalResult-tempVar

    valuesToSubmit = {product_id: productId, cart_id: cartId}
    $.ajax
      url: '/delete_product'
      type: "POST"
      data: valuesToSubmit
      dataType: "json"
      success: () ->
#        alert('SUPER!!!!!!')
#        console.log(valuesToSubmit)

#        params = []
#        arr = valuesToSubmit.split("&")
#        i = 0
#        while i < arr.length
#          param_arr = arr[i].split("=")
#          param =
#            name: param_arr[0]
#            value: param_arr[1]
#          params[params.length] = param
#          i++
#        temp = params[0].value
        wrapId = '#id'+productId
        console.log(wrapId)
        $(wrapId).remove()
        $('.cart-result-show span').text(resultPrice)
        sum = 0
        $('.table-item-coll-count span').each ->
          sum +=parseInt($(this).text())
        if sum !=0
          $('span#count_items_in_cart span').text(sum)
          $('span#count_items_in_cart').removeClass('dn')

    #act on result.
    false # prevents normal behaviour

#call order form
  $("#call_order_form").submit ->
    valuesToSubmit = $(this).serialize()
    #sumbits it to the given url of the form
    # you want a difference between normal and ajax-calls, and json is standard
#    $('#call_order_form').addClass(' dn')
    $('.loading_status').removeClass('dn')
    $.ajax
      url: $(this).attr("action")
      type: "POST"
      data: valuesToSubmit
#      dataType: "JSON"
      success: () ->
#        alert("SUPER!!!!!!")
        $('.loading_status').addClass(' dn')
        $(".orderReadyWrapper").removeClass("dn")
        $("#call_order_form").addClass(" dn")
#        $(".fancybox-inner").height('height', '250px')
#        $(".fancybox-wrap").css({"width":"600px","left":"30%"})
#        $.fancybox.close
    #act on result.
    false # prevents normal behaviour


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



  $.validate()




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



