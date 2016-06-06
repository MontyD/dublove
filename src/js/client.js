//General use functions


//AddEvent for old ie support
function addEvent(evnt, elem, func) {
   if (elem.addEventListener)  {
	  elem.addEventListener(evnt,func,false);
   } else if (elem.attachEvent) {
	  elem.attachEvent("on" + evnt, func);
   } else {
	  elem[evnt] = func;
   }
}


(function() {
  'use strict';


  //*********************
  //** Handle mobile navigation menu
  //*********************
  // var mobileNav = document.getElementById('mobileNav'),
  //   mobileNavClickElements = document.getElementsByClassName('navOnClick'),
  //   navOpen = false,
  //   toggleMobileNav = function(e) {
  //     var evt = e || window.event;
  //     if (evt.preventDefault) {
  //       evt.preventDefault();
  //     } else {
  //       evt.returnValue = false;
  //     }
  //     if (navOpen) {
  //       overlay.className = "";
  //       mobileNav.className = "";
  //       navOpen = false;
  //     } else {
  //       overlay.className = "active";
  //       mobileNav.className = "active";
  //       navOpen = true;
  //     }
  //   };
  //
  // for( var i = 0; i < mobileNavClickElements.length; i++) {
  //   addEvent('click', mobileNavClickElements[i], toggleMobileNav);
  // }

  //*********************
  //** Add date year to footer
  //*********************
  // var dateElement = document.getElementById('dateNow');
  // if (dateElement) {
  //   var tempDate = new Date();
  //   dateElement.innerHTML = tempDate.getFullYear();
  // }
  window.setTimeout(function(){
    document.getElementsByTagName('body')[0].className = 'active';
  },100);
})();
