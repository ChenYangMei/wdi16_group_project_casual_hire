var $card;
$(document).ready(function() {
  $("#buttons button").on("click", function () {
    var buttonClass = $(this).attr("class");
    // console.log( "BUTTON CLICKED", buttonClass );
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
