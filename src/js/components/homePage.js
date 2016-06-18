(function() {

    'use strict';

    var animatationEls = document.getElementsByClassName('animate');

    //define scroll events
    var scrollEvents = debounce(function(callback) {
        var doc = document.documentElement;
        var top = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
        return callback(top);
    }, 30);

    var bLazy = new Blazy({
        offset: 200
    });





    //on scroll check if nav is at top, if not, make it small
    addEvent("scroll", window, scrollEvents);

})();
