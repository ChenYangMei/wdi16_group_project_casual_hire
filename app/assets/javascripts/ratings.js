// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $("#rating_show").hide();

  $("#completed").on("click", function(){
    $("#rating_show").show();
  });

  var handleData = function(e, data){
    console.log(data);
  };

  var handleError = function (e, xhr) {
    $("#offer").text("Something went wrong!")
  };

  $("#new_rating").on( "ajax:success", handleData )
    .on( "ajax:error", handleError );
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
