var debounce = require('./components/_debounce');
var scrollEvents = require('./components/_scrollEvents');
var scrollAnimations = require('./components/_scrollAnimations');
var imgViewer = require('./components/_imgViewer');
var addDateToFooter = require('./components/_addDateToFooter');
var setActive = require('./components/_setActive');
var Blazy = require('./vendor/blazy.min');

var homePage = (function() {

  setActive();

  var bLazy = new Blazy({
      offset: 200
  });

  imgViewer(bLazy);

  addDateToFooter();

  window.addEventListener('scroll', function() {
    debounce(scrollEvents(scrollAnimations), 30);
  }, false);


})();


module.exports = homePage;
