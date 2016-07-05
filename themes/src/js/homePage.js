var debounce = require('./components/_debounce');
var scrollEvents = require('./components/_scrollEvents');
var scrollAnimations = require('./components/_scrollAnimations');
var addDateToFooter = require('./components/_addDateToFooter');
var setActive = require('./components/_setActive');
var Blazy = require('./vendor/blazy.min');

var homePage = (function() {

  setActive();

  var bLazy = new Blazy({
      offset: 500
  });

  addDateToFooter();

  window.addEventListener('resize', function(){
    debounce(bLazy.revalidate(), 100);
  },false);

  window.addEventListener('scroll', function() {
    debounce(scrollEvents(scrollAnimations), 50);
    debounce(bLazy.revalidate(), 300);
  }, false);

  bLazy.revalidate();

})();


module.exports = homePage;
