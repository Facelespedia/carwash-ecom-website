(function (window, $) {
  'use strict';

  if (!window.CarWash) {
    window.CarWash = {};
  }

  var CarWash = window.CarWash;

  CarWash.App = CarWash.App || {};

  CarWash.App.Test = {
    Init: function () {
      console.log('test')
    }
  };
})(window, jQuery);