/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ({

/***/ 0:
/***/ function(module, exports, __webpack_require__) {

	var debounce = __webpack_require__(111);
	var scrollEvents = __webpack_require__(112);
	var scrollAnimations = __webpack_require__(113);
	var imgViewer = __webpack_require__(114);
	var addDateToFooter = __webpack_require__(1);
	var setActive = __webpack_require__(2);
	var Blazy = __webpack_require__(3);
	var menu = __webpack_require__(109);

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


/***/ },

/***/ 1:
/***/ function(module, exports) {

	var addDateToFooter = function() {
	    var dateElement = document.getElementById('dateNow');
	    if (dateElement) {
	        var tempDate = new Date();
	        dateElement.innerHTML = tempDate.getFullYear();
	    }
	};

	module.exports = addDateToFooter;


/***/ },

/***/ 2:
/***/ function(module, exports) {

	var setActive = function() {
	    window.setTimeout(function() {
	        document.getElementsByTagName('body')[0].className = document.getElementsByTagName('body')[0].className.replace('noJS', 'JS');
	        document.getElementsByTagName('header')[0].className += ' active';
	    }, 300);
	};

	module.exports = setActive;


/***/ },

/***/ 3:
/***/ function(module, exports, __webpack_require__) {

	var __WEBPACK_AMD_DEFINE_FACTORY__, __WEBPACK_AMD_DEFINE_RESULT__;  (function(k,f){ true?!(__WEBPACK_AMD_DEFINE_FACTORY__ = (f), __WEBPACK_AMD_DEFINE_RESULT__ = (typeof __WEBPACK_AMD_DEFINE_FACTORY__ === 'function' ? (__WEBPACK_AMD_DEFINE_FACTORY__.call(exports, __webpack_require__, exports, module)) : __WEBPACK_AMD_DEFINE_FACTORY__), __WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__)):"object"===typeof exports?module.exports=f():k.Blazy=f()})(this,function(){function k(b){setTimeout(function(){var c=b._util;c.elements=w(b.options.selector);c.count=c.elements.length;c.destroyed&&(c.destroyed=!1,b.options.container&&h(b.options.container,function(a){l(a,"scroll",c.validateT)}),l(window,"resize",c.saveViewportOffsetT),l(window,"resize",c.validateT),l(window,"scroll",c.validateT));f(b)},1)}function f(b){for(var c=b._util,a=0;a<c.count;a++){var d=c.elements[a],g=d.getBoundingClientRect();if(g.right>=e.left&&g.bottom>=e.top&&g.left<=e.right&&g.top<=e.bottom||n(d,b.options.successClass))b.load(d),c.elements.splice(a,1),c.count--,a--}0===c.count&&b.destroy()}function q(b,c,a){if(!n(b,a.successClass)&&(c||a.loadInvisible||0<b.offsetWidth&&0<b.offsetHeight))if(c=b.getAttribute(p)||b.getAttribute(a.src)){c=c.split(a.separator);var d=c[r&&1<c.length?1:0],g="img"===b.nodeName.toLowerCase();g||void 0===b.src?(c=new Image,c.onerror=function(){a.error&&a.error(b,"invalid");b.className=b.className+" "+a.errorClass},c.onload=function(){g?b.src=d:b.style.backgroundImage='url("'+d+'")';t(b,a)},c.src=d):(b.src=d,t(b,a))}else a.error&&a.error(b,"missing"),n(b,a.errorClass)||(b.className=b.className+" "+a.errorClass)}function t(b,c){b.className=b.className+" "+c.successClass;c.success&&c.success(b);h(c.breakpoints,function(a){b.removeAttribute(a.src)});b.removeAttribute(c.src)}function n(b,c){return-1!==(" "+b.className+" ").indexOf(" "+c+" ")}function w(b){var c=[];b=document.querySelectorAll(b);for(var a=b.length;a--;c.unshift(b[a]));return c}function u(b){e.bottom=(window.innerHeight||document.documentElement.clientHeight)+b;e.right=(window.innerWidth||document.documentElement.clientWidth)+b}function l(b,c,a){b.attachEvent?b.attachEvent&&b.attachEvent("on"+c,a):b.addEventListener(c,a,!1)}function m(b,c,a){b.detachEvent?b.detachEvent&&b.detachEvent("on"+c,a):b.removeEventListener(c,a,!1)}function h(b,c){if(b&&c)for(var a=b.length,d=0;d<a&&!1!==c(b[d],d);d++);}function v(b,c,a){var d=0;return function(){var g=+new Date;g-d<c||(d=g,b.apply(a,arguments))}}var p,e,r;return function(b){if(!document.querySelectorAll){var c=document.createStyleSheet();document.querySelectorAll=function(a,b,d,e,f){f=document.all;b=[];a=a.replace(/\[for\b/gi,"[htmlFor").split(",");for(d=a.length;d--;){c.addRule(a[d],"k:v");for(e=f.length;e--;)f[e].currentStyle.k&&b.push(f[e]);c.removeRule(0)}return b}}var a=this,d=a._util={};d.elements=[];d.destroyed=!0;a.options=b||{};a.options.error=a.options.error||!1;a.options.offset=a.options.offset||100;a.options.success=a.options.success||!1;a.options.selector=a.options.selector||".b-lazy";a.options.separator=a.options.separator||"|";a.options.container=a.options.container?document.querySelectorAll(a.options.container):!1;a.options.errorClass=a.options.errorClass||"b-error";a.options.breakpoints=a.options.breakpoints||!1;a.options.loadInvisible=a.options.loadInvisible||!1;a.options.successClass=a.options.successClass||"b-loaded";a.options.validateDelay=a.options.validateDelay||25;a.options.saveViewportOffsetDelay=a.options.saveViewportOffsetDelay||50;a.options.src=p=a.options.src||"data-src";r=1<window.devicePixelRatio;e={};e.top=0-a.options.offset;e.left=0-a.options.offset;a.revalidate=function(){k(this)};a.load=function(a,b){var c=this.options;void 0===a.length?q(a,b,c):h(a,function(a){q(a,b,c)})};a.destroy=function(){var a=this._util;this.options.container&&h(this.options.container,function(b){m(b,"scroll",a.validateT)});m(window,"scroll",a.validateT);m(window,"resize",a.validateT);m(window,"resize",a.saveViewportOffsetT);a.count=0;a.elements.length=0;a.destroyed=!0};d.validateT=v(function(){f(a)},a.options.validateDelay,a);d.saveViewportOffsetT=v(function(){u(a.options.offset)},a.options.saveViewportOffsetDelay,a);u(a.options.offset);h(a.options.breakpoints,function(a){if(a.width>=window.screen.width)return p=a.src,!1});k(a)}});


/***/ },

/***/ 109:
/***/ function(module, exports, __webpack_require__) {

	var addEvent = __webpack_require__(110);

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


/***/ },

/***/ 110:
/***/ function(module, exports) {

	var addEvent = function(evnt, elem, func) {
	   if (elem.addEventListener)  {
		  elem.addEventListener(evnt,func,false);
	   } else if (elem.attachEvent) {
		  elem.attachEvent("on" + evnt, func);
	   } else {
		  elem[evnt] = func;
	   }
	};

	module.exports = addEvent;


/***/ },

/***/ 111:
/***/ function(module, exports) {

	var debounce = function(func, wait, immediate) {
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
	};

	module.exports = debounce;


/***/ },

/***/ 112:
/***/ function(module, exports) {

	var scrollEvents = function(callback) {
	    var doc = document.documentElement;
	    var top = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
	    if (callback) {
	        return callback(top);
	    }
	    return false;
	};

	module.exports = scrollEvents;


/***/ },

/***/ 113:
/***/ function(module, exports) {

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


/***/ },

/***/ 114:
/***/ function(module, exports, __webpack_require__) {

	var debounce = __webpack_require__(111);
	var addEvent = __webpack_require__(110);

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


/***/ }

/******/ });