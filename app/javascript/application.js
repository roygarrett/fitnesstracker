// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "chartkick"
import "Chart.bundle"

// Import jQuery/JS Cookie
import jquery from "jquery"
import * as cookies from "js-cookie"

// Window
window.jQuery = jquery
window.$ = jquery
window.Cookies = cookies.default

// Dark Mode
function saveDarkMode(value) {
  localStorage.setItem('toggleState', value);
}

function applyDarkMode(new_mode) {
  var html_element = $("html");

  if (new_mode) {
    html_element.attr("data-bs-theme", "dark");
  } else {
    html_element.removeAttr("data-bs-theme");
  }
}

function initializeDarkMode() {
  var initialState = localStorage.getItem('toggleState') == 'true';
  $('.toggle-input').prop("checked", initialState);
  applyDarkMode(initialState);
}

// Toggle Switch
$(document).on('change', ".toggle-input", function() {
  var new_mode = $(this).prop("checked");
  saveDarkMode(new_mode);
  applyDarkMode(new_mode);
});

// Initialize Dark Mode
initializeDarkMode();

$(document).on("turbo:load", function() {
  initializeDarkMode();
})
