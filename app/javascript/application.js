
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jquery from "jquery"
window.$ = jquery

import "@fortawesome/fontawesome-free"
import "@hotwired/turbo-rails"

$(document).on('turbo:load', function(){
  $('.hamburger').on('click', function () {
    $('.hamburger, .phone').toggleClass('show');
  });
});

$(function(){
  $(".readmore").on("click", function() {
      $(this).toggleClass("on-click");
      $(".hide-text").slideToggle(1000);
  });
}); 

$(document).on('turbo:load', function(){
  $('.like_star').trigger('click');
});

$(document).on('turbo:load', function() {
  var offset = 100;
  var duration = 500;
  $(window).scroll(function() {
  if ($(this).scrollTop() > offset) {
  $('#pagetop').fadeIn(duration);
  } else {
  $('#pagetop').fadeOut(duration);
  }
  });
  
  $('#pagetop').click(function(event) {
  event.preventDefault();
  $('html, body').animate({scrollTop: 0}, duration);
  return false;
  })
});


