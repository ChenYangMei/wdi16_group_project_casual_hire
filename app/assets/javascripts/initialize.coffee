jQuery(document).on 'turbolinks:load', ->
  $('.scroller').slick({
      dots: true,
      infinite: true,
      speed: 500,
      fade: true,
      cssEase: 'linear'
});
