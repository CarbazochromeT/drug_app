// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jquery from "jquery"
window.$ = jquery

import "@fortawesome/fontawesome-free"

$('#hamburger').on('click', function(){
  $('.icon').toggleClass('close');
  $('.phone').slideToggle();
  });