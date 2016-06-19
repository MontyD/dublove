var animatationEls = [].slice.call(document.getElementsByClassName('animate'));

var scrollAnimations = function(top) {
  for (var i = 0; i < animatationEls.length; i++) {
      if (animatationEls[i].getBoundingClientRect().top < 550 && animatationEls[i].className.indexOf('active') === -1) {
          animatationEls[i].className += ' active';
          animatationEls.splice(i, 1);
      }
  }
};

module.exports = scrollAnimations;
