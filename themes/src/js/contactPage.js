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

})();

module.exports = page;
