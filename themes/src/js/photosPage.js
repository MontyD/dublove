var PhotoSwipe = require('./vendor/photoswipe');
var PhotoSwipeUI_Default = require('./vendor/photoswipe-ui-default');
var addDateToFooter = require('./components/_addDateToFooter');
var setActive = require('./components/_setActive');
var menu = require('./components/_menu');
var Blazy = require('./vendor/blazy.min');

(function() {

	'use strict';

	menu();

	setActive();

	var bLazy = new Blazy({
		offset: 500
	});

	var initPhotoSwipeFromDOM = function(gallerySelector) {

		var parseThumbnailElements = function(el) {
			var thumbElements = el.getElementsByTagName('figure'),
				numNodes = thumbElements.length,
				items = [],
				figureEl,
				linkEl,
				size,
				item;

			for (var i = 0; i < numNodes; i++) {

				figureEl = thumbElements[i]; // <figure> element

				// include only element nodes
				if (figureEl.nodeType !== 1) {
					continue;
				}

				linkEl = figureEl.children[0]; // <a> element

				size = [linkEl.getAttribute('data-width'), linkEl.getAttribute('data-height')];

				// create slide object
				item = {
					src: linkEl.getAttribute('href'),
					w: parseInt(size[0], 10),
					h: parseInt(size[1], 10)
				};



				if (figureEl.children.length > 1) {
					// <figcaption> content
					item.title = figureEl.children[1].innerHTML;
				}

				item.el = figureEl; // save link to element for getThumbBoundsFn
				items.push(item);
			}
			return items;
		};

		// find nearest parent element
		var closest = function closest(el, fn) {
			return el && (fn(el) ? el : closest(el.parentNode, fn));
		};

		// triggers when user clicks on thumbnail
		var onThumbnailsClick = function(e) {
			e = e || window.event;
			e.preventDefault ? e.preventDefault() : e.returnValue = false;

			var eTarget = e.target || e.srcElement;

			// find root element of slide
			var clickedListItem = closest(eTarget, function(el) {
				return (el.tagName && el.tagName.toUpperCase() === 'FIGURE');
			});

			if (!clickedListItem) {
				return;
			}

			// find index of clicked item by looping through all child nodes
			// alternatively, you may define index via data- attribute
			var clickedGallery = clickedListItem.parentNode,
				childNodes = clickedListItem.parentNode.getElementsByTagName('figure'),
				numChildNodes = childNodes.length,
				nodeIndex = 0,
				index;

			for (var i = 0; i < numChildNodes; i++) {
				if (childNodes[i].nodeType !== 1) {
					continue;
				}

				if (childNodes[i] === clickedListItem) {
					index = nodeIndex;
					break;
				}
				nodeIndex++;
			}



			if (index >= 0) {
				// open PhotoSwipe if valid index found
				openPhotoSwipe(index, clickedGallery);
			}
			return false;
		};

		// parse picture index and gallery index from URL (#&pid=1&gid=2)
		var photoswipeParseHash = function() {
			var hash = window.location.hash.substring(1),
				params = {};

			if (hash.length < 5) {
				return params;
			}

			var vars = hash.split('&');
			for (var i = 0; i < vars.length; i++) {
				if (!vars[i]) {
					continue;
				}
				var pair = vars[i].split('=');
				if (pair.length < 2) {
					continue;
				}
				params[pair[0]] = pair[1];
			}

			if (params.gid) {
				params.gid = parseInt(params.gid, 10);
			}

			return params;
		};

		var openPhotoSwipe = function(index, galleryElement, disableAnimation, fromURL) {
			var pswpElement = document.querySelectorAll('.pswp')[0],
				gallery,
				options,
				items;

			items = parseThumbnailElements(galleryElement);

			// define options (if needed)
			options = {

				// define gallery index (for URL)
				galleryUID: galleryElement.getAttribute('data-pswp-uid'),

				shareEl: false,

				getThumbBoundsFn: false,

				showHideOpacity: true,



			};

			// PhotoSwipe opened from URL
			if (fromURL) {
				if (options.galleryPIDs) {
					// parse real index when custom PIDs are used
					// http://photoswipe.com/documentation/faq.html#custom-pid-in-url
					for (var j = 0; j < items.length; j++) {
						if (items[j].pid == index) {
							options.index = j;
							break;
						}
					}
				} else {
					// in URL indexes start from 1
					options.index = parseInt(index, 10) - 1;
				}
			} else {
				options.index = parseInt(index, 10);
			}

			// exit if index not found
			if (isNaN(options.index)) {
				return;
			}

			if (disableAnimation) {
				options.showAnimationDuration = 0;
			}

			// Pass data to PhotoSwipe and initialize it
			gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options);
			gallery.init();
		};

		// loop through all gallery elements and bind events
		var galleryElements = document.querySelectorAll(gallerySelector);

		for (var i = 0, l = galleryElements.length; i < l; i++) {
			galleryElements[i].setAttribute('data-pswp-uid', i + 1);
			galleryElements[i].onclick = onThumbnailsClick;
		}

		// Parse URL and open gallery if it contains #&pid=3&gid=1
		var hashData = photoswipeParseHash();
		if (hashData.pid && hashData.gid) {
			openPhotoSwipe(hashData.pid, galleryElements[hashData.gid - 1], true, true);
		}
	};

	// execute above function
	initPhotoSwipeFromDOM('.main-gallery');



})();
