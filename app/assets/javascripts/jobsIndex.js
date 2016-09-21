$(document).ready(function() {

(function() {
  var $categories = $('.button a');
  var $buttons = $('#buttons');
  var tagged = {};
  console.log(tagged);
  $categories.each(function(){
    var categories = this;
    var tags = $(this).text();
    console.log("This should be " + tags);
  if (tags) {
    tags.forEach(function(tagName) {
      if (tagged[tagName] === null) {
        tagged[tagName] = [];
      }
      tagged[tagName].push(categories);
    });
    }
  });
  $('<button/>', {
    text: 'Show All',
    class: 'active',
    click: function() {
      $(this)
        .addClass('active')
        .siblings()
        .removeClass('active');
      $categories.show();
    }
  }).appendTo($buttons);
  $.each(tagged, function(tagName){
    $('<button/>', {
      text: tagName + ' (' + tagged[tagName].length + ')',
      click: function() {
        $(this)
          .addClass('active')
          .siblings()
          .removeClass('active');
        $categories
          .hide()
          .filter(tagged[tagName])
          .show();
      }
    }).appendTo($buttons);
  });
}());
});
