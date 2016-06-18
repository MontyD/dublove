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

    var animatationEls = document.getElementsByClassName('animate');

    //define scroll events
    var scrollEvents = debounce(function() {
        var doc = document.documentElement;
        var top = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
        for (var i = 0; i < animatationEls.length; i++) {
            if (animatationEls[i].getBoundingClientRect().top < 550 && animatationEls[i].className.indexOf('active') === -1) {
                animatationEls[i].className += ' active';

            }
        }

    }, 30);

    var bLazy = new Blazy({
        offset: 200
    });


    var imgViewer = document.getElementById('imageViewer'),
        images = imgViewer.getElementsByClassName('b-lazy'),
        leftButton = document.getElementById('imgLeft'),
        rightButton = document.getElementById('imgRight'),
        activeItem = 1;


    var makeActive = debounce(function(direction) {
        if (direction === 'left') {
          activeItem = activeItem -1 < 0 ? images.length - 1 : activeItem - 1;
        } else {
          activeItem = activeItem + 1 >= images.length ? 0 : activeItem + 1;
        }
        var bottomIndex = activeItem === 0 ? images.length - 1 : activeItem - 1;
        var topIndex = activeItem >= images.length - 1 ? 0 : activeItem + 1;
        images[bottomIndex].className = images[bottomIndex].className.replace(' active', '') + ' left';
        images[topIndex].className = images[topIndex].className.replace(' active', '') + ' right';
        images[activeItem].className = images[activeItem].className.replace(/left|right/gi, 'active');
        for (var i = 0; i < images.length; i++) {
            if (i !== activeItem && i !== topIndex && i !== bottomIndex) {
                images[i].className = images[i].className.replace(/\sactive|\sleft|\sright/gi, '');
            }
        }
        bLazy.revalidate();
        return false;
    }, 20);


    function assignImgRole(el, position) {
        el.className += ' ' + position;
        if (position === 'left') {
            addEvent('click', el, imgLeft);
        } else if (position === 'right') {
            addEvent('click', el, imgRight);
        }
    }

    assignImgRole(images[0], 'left');
    assignImgRole(images[1], 'active');
    assignImgRole(images[2], 'right');

    addEvent('click', leftButton, function(){return makeActive('left');});
    addEvent('click', rightButton, function(){return makeActive('right');});


    //on scroll check if nav is at top, if not, make it small
    addEvent("scroll", window, scrollEvents);

})();
