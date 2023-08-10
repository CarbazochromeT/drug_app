
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jquery from "jquery"
window.$ = jquery

import "@fortawesome/fontawesome-free"
import "@hotwired/turbo-rails"
import "controllers"

//ヘッダートグル
$('#hamburger').on('click', function(){
  $('.icon').toggleClass('close_h');
  $('.phone').slideToggle();
  });
  
//ログイン画面

$ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
  $(this).removeClass('is-active');
});


