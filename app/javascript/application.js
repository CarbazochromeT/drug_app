
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jquery from "jquery"
window.$ = jquery

import "@fortawesome/fontawesome-free"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false

  $('.hamburger').on('click', function () {
    $('.hamburger, .phone').toggleClass('show');
  });