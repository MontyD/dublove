(function() {

  'use strict';

  //debounce util function
  function debounce(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this,
        args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  }

  //define headerElement
  var nav = document.getElementById('stickyNav');

  //define scroll events
  var scrollEvents = debounce(function() {
    var doc = document.documentElement;
    var top = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
    if (top > 20) {
      nav.className = 'headerSmall';
    } else {
      nav.className = '';
    }
  }, 10);

  //on scroll check if nav is at top, if not, make it small
  addEvent("scroll", window, scrollEvents);

})();
