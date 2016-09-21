// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $("#rating_show").hide();

  $("#completed").on("click", function(){
    $("#rating_show").show();
  });

  $('#submit_user_rating').on('submit', function(e){
    e.preventDefault();
    var details = $('submit_user_rating').serialize();
    $.post('rate_user_path(@job.id)', details, function(data){
      $('#submit_user_rating').html(data);
    });
  });

  $('#submit_job_rating').on('submit', function(e){
    e.preventDefault();
    var details = $('submit_job_rating').serialize();
    $.post('rate_job_path(@job.id)', details, function(data){
      $('#submit_job_rating').html(data);
    });
  });

});


//   var handleData = function (e, data) {
//     console.log(data);
//     var $offerDisplayTemplate = $("#ratingDisplayTemplate").html();
//     var dynamicMarkupTemplate = _.template( $offerDisplayTemplate );
//     var compiledTemplate = dynamicMarkupTemplate( data );
//     $("#rating_show").html(compiledTemplate);
//   };
//
//   var handleError = function (e, xhr) {
//     console.log(xhr);
//     console.log("SOMETHING WENT WRONG");
//   };
//
//   $("#new_rating").on( "ajax:success", handleData )
//     .on( "ajax:error", handleError );
//
// });
