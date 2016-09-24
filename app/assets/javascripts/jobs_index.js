
var $card;
$(document).ready(function() {
  $(".latitude").hide();
  $(".longitude").hide();
  $("#buttons button").on("click", function () {
    console.log("clicked")
    var buttonClass = $(this).attr("class");
    console.log( "BUTTON CLICKED", buttonClass );
    var selector = '.' + buttonClass;
    if ( buttonClass === "all" ) {
      selector = "*";
    }
    $card.isotope({ filter: selector });
  });

  $('selector').isotope();
  $card = $('.cards').isotope({
    // options
    itemSelector: '.card',
    layoutMode: 'fitRows'
  });

});
