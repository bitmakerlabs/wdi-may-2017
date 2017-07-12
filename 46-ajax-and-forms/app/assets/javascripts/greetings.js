// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// $( document ).ready(function(){
//
// })
// 0. DOM loaded
$(function(){
// 1. Event listener
  $('#greeting-form').on('submit', function(e){
    // 2. Prevent the default behaviour
    e.preventDefault();

    // $(this) = $('#greeting-form')
    //let nameOfVar = $('#greeting-form');

    // 3. AJAX stuff
    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize(),
      dataType: ''
    }).done(function(data) {
      // On successful request
      console.log("Yipee it worked");
      console.log(data);
      $('#greeting-list').prepend(data);
    }).fail(function() {
      // On failure
      console.log("Stuff went awry");
    }).always(function() {
      // Does stuff every time
      console.log("Heyo, how are you?");
    })
  });
});
