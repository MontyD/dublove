var debounce = require('./components/_debounce');
var scrollEvents = require('./components/_scrollEvents');
var scrollAnimations = require('./components/_scrollAnimations');
var imgViewer = require('./components/_imgViewer');
var addDateToFooter = require('./components/_addDateToFooter');
var setActive = require('./components/_setActive');
var Blazy = require('./vendor/blazy.min');
var grunticonLoader = require('./vendor/grunticon.loader');

var homePage = (function() {

  setActive();

  grunticonLoader();

  grunticon(["dublove/icons/icons.data.svg.css", "dublove/icons/icons.data.png.css", "dublove/icons/icons.fallback.css"], grunticon.svgLoadedCallback);


  var bLazy = new Blazy({
      offset: 500
  });

  imgViewer(bLazy);

  addDateToFooter();

  window.addEventListener('scroll', function() {
    debounce(scrollEvents(scrollAnimations), 30);
  }, false);


})();


module.exports = homePage;
