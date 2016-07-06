var debounce = require('./components/_debounce');
var scrollEvents = require('./components/_scrollEvents');
var scrollAnimations = require('./components/_scrollAnimations');
var imgViewer = require('./components/_imgViewer');
var addDateToFooter = require('./components/_addDateToFooter');
var setActive = require('./components/_setActive');
var Blazy = require('./vendor/blazy.min');
var menu = require('./components/_menu');

var page = (function(){

  menu();

  setActive();

  var bLazy = new Blazy({
      offset: 500
  });

  addDateToFooter();

  imgViewer(bLazy);

  window.addEventListener('scroll', function() {
    debounce(scrollEvents(scrollAnimations), 50);
  }, false);

  window.addEventListener('resize', function(){
    debounce(bLazy.revalidate(), 100);
  },false);

  bLazy.revalidate();

})();

module.exports = page;
