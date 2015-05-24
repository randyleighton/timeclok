$(document).ready(function(){

  setTimeout(function() {
    $("#flash").remove();
  },5000);

  $('#add-workday-btn').click(function(){
    $('#add-workday-icon-change').next().toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
    $('#add-workday').next().slideToggle();
  }); 

  $("#view-workdays-btn").click(function() {
    $('#view-workday-icon-change').next().toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
    $('#view-workdays').next().slideToggle();
  });

  $("#view-timecard-summary-btn").click(function() {
    $('#view-timecard-summary-icon-change').next().toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
    $("#view-timecard-summary").next().slideToggle();
  });

});