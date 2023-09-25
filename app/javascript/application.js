
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


