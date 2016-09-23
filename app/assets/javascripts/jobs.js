// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var $latitude;
var $longitude;
var mapArr = [];

var placeMarkers = function(response) {
  console.log(response.length);
  for (var i = 0; i < response.length; i++){
    marker = new google.maps.Marker({
      map: map,

      draggable: true,
      animation: google.maps.Animation.DROP,
      position: {
        lat: response[i][1],
        lng: response[i][2]},
      label: response[i][0]
    });
  }
};

var getCoordinates = function() {
  $.ajax({
    url: "/coordinates",
    type: 'GET',
    format: 'JSON',
  }).done( placeMarkers );
};

var initMap = function(lat, lng) {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {
      lat: lat,
      lng: lng
    },
    zoom: 12
  });
    marker = new google.maps.Marker({
      map: map,
      draggable: true,
      animation: google.maps.Animation.DROP,
      position: {
        lat: lat,
        lng: lng}
    });
  getCoordinates();
};


$(document).ready(function() {
  latitude = parseFloat($("#lat_id").text());
  longitude = parseFloat($("#lng_id").text());

  initMap(latitude, longitude);
  $("#lat_id").hide();
  $("#lng_id").hide();
  $(".scroller").slick({
    dots: true,
    infinite: true,
    speed: 500,
    fade: true,
    cssEase: 'linear'
  });

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


  //Change Job Status
  var handleUpdateIncrement = function (data) {
    $(".status span").text( data.status );
  };

  var changeJobStatus = function(){
    var jobId = parseInt( $("#job_id").text() );
    $.ajax({
      url: "/jobs/" + jobId + "/status_in_progress",
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


  // Job completed

  var handleAnotherIncrement = function(data){
    var status = data.status.charAt(0).toUpperCase() + data.status.slice(1);
    $(".status span").text( status );
    $(".status").hide();
  };

  var completeJobStatus = function(){
    var jobId = parseInt( $("#job_id").text() );
    $.ajax({
      url: "/jobs/" + jobId + "/status_completed",
      type: 'PUT',
      format: 'JSON',
    }).done( handleAnotherIncrement );
  };

  $("#completed").on("click", completeJobStatus);

});
