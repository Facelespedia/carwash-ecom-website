var ready = function() {
  "use strict";
  if (!window.CarWash) {
    window.CarWash = {};
  }

  var CarWash = window.CarWash;

  CarWash.App = CarWash.App || {};

  CarWash.Init = (function() {
    CarWash.App.Landing.Init();
  })();
};

window.$(document).on("turbolinks:load", ready);
