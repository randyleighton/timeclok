$(function(){

  setTimeout(function() {
    $("#flash").remove();
  },5000);

  $('#add-workday-btn').click(function(){
    $('#add-workday').toggle();
  }); 

});