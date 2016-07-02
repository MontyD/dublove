var debounce = require('./_debounce');
var addEvent = require('./_addEvent');

var imgViewer = function(bLazy) {


	function assignImgRole(el, position) {
		el.className += ' ' + position;
		if (position === 'left') {
			addEvent('click', el, imgLeft);
		} else if (position === 'right') {
			addEvent('click', el, imgRight);
		}
	}

	var imgViewer = document.getElementById('imageViewer');

	if (imgViewer) {
		var images = imgViewer.getElementsByClassName('b-lazy'),
			leftButton = document.getElementById('imgLeft'),
			rightButton = document.getElementById('imgRight'),
			activeItem = 1;


		var makeActive = debounce(function(direction) {
			if (direction === 'left') {
				activeItem = activeItem - 1 < 0 ? images.length - 1 : activeItem - 1;
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

		assignImgRole(images[0], 'left');
		assignImgRole(images[1], 'active');
		assignImgRole(images[2], 'right');

		addEvent('click', leftButton, function() {
			return makeActive('left');
		});
		addEvent('click', rightButton, function() {
			return makeActive('right');
		});
	}


};

module.exports = imgViewer;
