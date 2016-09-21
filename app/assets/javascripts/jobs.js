// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $("#job_id").hide();
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

  // Ajax request posted by rails remote form(job show html.erb page), and handle data from then. See code above.
  $("#new_applicant").on( "ajax:success", handleData )
    .on( "ajax:error", handleError );

  var handleUpdateIncrement = function (data) {
    $(".status span").text( data.status );
  };

  //Change Job Status
  var changeJobStatus = function(){
    var jobId = parseInt( $("#job_id").text() )
    $.ajax({
      url: "/jobs/" + jobId + "/increment",
      type: 'PUT',
      format: 'JSON',
    }).done( handleUpdateIncrement );
  };

  // After select an applicant and submit, replace the drop down box with the selected information.

  var handleJobApplicant = function(e, data){
    //take the json object returned by the jobs#update method and manipulate it and make some changes to the DOM.
    console.log(data);
    var $applicantDisplayTemplate = $("#applicantDisplayTemplate").html();
    var dynamicMarkupTemplate = _.template( $applicantDisplayTemplate );
    var compiledTemplate = dynamicMarkupTemplate( data );

    $(".edit_job").html(compiledTemplate);

    changeJobStatus();
  };

  $(".edit_job").on( "ajax:success", handleJobApplicant )
    .on( "ajax:error", handleError );




});
