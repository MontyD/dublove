function addEvent(a,b,c){b.addEventListener?b.addEventListener(a,c,!1):b.attachEvent?b.attachEvent("on"+a,c):b[a]=c}!function(){"use strict";var a=document.getElementById("dateNow");if(a){var b=new Date;a.innerHTML=b.getFullYear()}window.setTimeout(function(){document.getElementsByTagName("body")[0].className=document.getElementsByTagName("body")[0].className.replace("noJS","active")},100)}();