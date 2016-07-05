var addDateToFooter = require('./components/_addDateToFooter');
var setActive = require('./components/_setActive');
var Blazy = require('./vendor/blazy.min');
var moment = require('moment');
var Pikaday = require('./vendor/pickaday');

var page = (function() {

	setActive();

	var bLazy = new Blazy({
		offset: 500
	});

	var picker = new Pikaday({
		field: document.getElementById('Form_ContactUsForm_date'),
		format: 'DD/MM/YYYY'
	});

	addDateToFooter();

	bLazy.revalidate();



	window.initMap = function() {
			var myCenter = { lat: 52.247312, lng: 0.697720};
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
            center: myCenter,
            zoom: 7
        });

				var marker = new google.maps.Marker({
					position: myCenter,
					map: map,
					title: 'Dublove'
				});

				var circle = new google.maps.Circle({
            strokeColor: '#5e5694',
            strokeOpacity: 0.8,
            strokeWeight: 1,
            fillColor: '#5e5694',
            fillOpacity: 0.2,
            map: map,
            center: myCenter,
            radius: 40000,
          });
      };
})();

module.exports = page;
