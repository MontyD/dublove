var debounce = require('./components/_debounce');
var scrollEvents = require('./components/_scrollEvents');
var scrollAnimations = require('./components/_scrollAnimations');
var Blazy = require('./components/blazy.min');

var homePage = (function() {

  new Blazy({
      offset: 200
  });

  window.addEventListener('scroll', function() {
    debounce(scrollEvents(scrollAnimations), 30);
  }, false);


})();


module.exports = homePage;
