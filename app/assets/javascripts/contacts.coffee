$(document).ready ->
  $.validate()
#  validationSettings = errorMessagePosition: "top"
#
#  #return true;
#
#  #$('#form-fields').hide();
#  #$('#sending-message').show();
#  #$.ajax({
#  #type:'POST',
#  #url: $form.attr('action'),
#  #data: $form.serialize(),
#  #success: function(){
#  #$('#sending-message').hide();
#  #$('#thanks-message').show();
#  #}
#  #});
#
#  #return false;
#  $("#contact_us").submit(->
#    $form = $("#contact_us")  if $(this).validate(false, validationSettings)
#    return
#  ).validateOnBlur(false, validationSettings).showHelpOnFocus()