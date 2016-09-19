// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  $("#offer").on("click", function(){
    console.log("haha");

    $.ajax({
      url: "/applicants/new",
      type: "GET"
    })

      return $("#offer").on("ajax:success", function(e, data, status, xhr) {
      return $("#offer").append(xhr.responseText);
      }).on("ajax:error", function(e, xhr, status, error) {
      return $("#offer").append("<p>ERROR</p>");
      });

    });

  });
