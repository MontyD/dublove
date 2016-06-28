<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		Requirements::css("https://fonts.googleapis.com/css?family=Josefin+Sans:400,700");
		Requirements::css("https://fonts.googleapis.com/css?family=Bad+Script");
		Requirements::css($this->ThemeDir()."/css/cars.min.css");
		Requirements::javascript($this->ThemeDir()."/javascript/page.js");
	}

}
