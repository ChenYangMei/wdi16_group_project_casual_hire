// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $("#offer").hide();

  $("#makeAnOffer").on("click", function(){
    $("#offer").show();
  });

  var handleData = function (e, data) {
    console.log(data);
    var $offerDisplayTemplate = $("#offerDisplayTemplate").html();
    var dynamicMarkupTemplate = _.template( $offerDisplayTemplate );
    var compiledTemplate = dynamicMarkupTemplate( data );
    $("#offer").html(compiledTemplate);
  };

  var handleError = function (e, xhr) {
    console.log(xhr);
    console.log("SOMETHING WENT WRONG");
  };

  $("#new_applicant").on( "ajax:success", handleData )
    .on( "ajax:error", handleError );

});
