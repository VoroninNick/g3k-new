
#ready = ->
$(document).ready ->
  ((d, s, id) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    return  if d.getElementById(id)
    js = d.createElement(s)
    js.id = id
    js.src = "//connect.facebook.net/uk_UA/all.js#xfbml=1&appId=111380162290131"
    fjs.parentNode.insertBefore js, fjs
  ) document, "script", "facebook-jssdk"

#$(document).ready(ready)
#$(document).on('page:load', ready)