// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

var jQuery = require("jquery");

// import jQuery from "jquery";
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import '../stylesheets/application';
import "@fortawesome/fontawesome-free/js/all";
//import "videocapture"


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { flat_pickr } from '../plugins/flatpickr';
import { initStarRating } from '../plugins/init_star_rating';

document.addEventListener('turbolinks:load', () => {
    $('[data-toggle="tooltip"]').tooltip();
    flat_pickr();
    initStarRating();
    // Call your functions here, e.g:
    // initSelect2();
});