$(function(){

  setTimeout(function() {
    $("#flash").remove();
  },5000);

  $("#update-password-btn").click(function() {
    $("#view-password-fields").toggle();
    $(this).toggle();  
  });

});