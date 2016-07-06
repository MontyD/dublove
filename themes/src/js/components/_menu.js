var addEvent = require('./_addEvent');

var menu = function() {

	var body = document.getElementsByTagName('body')[0],
		menuElements = document.getElementsByClassName('menu');

	function menuOnClick(e, close) {
		if (!close) {
			var evt = e || window.event;
			if (evt.preventDefault) {
				evt.preventDefault();
			} else {
				evt.returnValue = false;
			}
		}

		if (body.className.indexOf(' menuOpen') > -1 || close) {
			body.className = body.className.replace(' menuOpen', '');
		} else {
			body.className += ' menuOpen';
		}

	}

  function closeMenu(e) {
    var evt = e || window.event;
    if (evt.preventDefault) {
      evt.preventDefault();
    } else {
      evt.returnValue = false;
    }
    menuOnClick(null, true);
  }

	for (var i = 0; i < menuElements.length; i++) {
		addEvent('click', menuElements[i], menuOnClick);
	}

	addEvent('click', document.getElementById('overlay'), closeMenu);

  addEvent('click', document.getElementById('closeMenu'), closeMenu);

};

module.exports = menu;
