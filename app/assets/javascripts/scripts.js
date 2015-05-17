$(document).ready(function(){

  setTimeout(function() {
    $("#flash").remove();
  },5000);

  $('#add-workday-btn').click(function(){
    $('#add-workday').slideToggle();
  }); 

  $("#view-workdays-btn").click(function() {
    $('#view-workdays').slideToggle();
  });

  $("#view-timecard-summary-btn").click(function() {
    $("#view-timecard-summary").slideToggle();
  });

});