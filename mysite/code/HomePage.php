<?php

class HomePage extends Page {

	private static $db = array(
		"tagLine" => "Varchar",
		"sectionOneHeading" => "Varchar",
		"sectionOneText" => "HTMLText",
		"initialButtonText" => "Varchar",
		"initialButtonLocation" => "Varchar",
		"lastSentence" => "Varchar",
		"finalLinkText" => "Varchar",
		"finalLinkLocation" => "Varchar"
	);

	private static $has_one = array(
		"mainImage" => "Image",
	  "sectionOneImage" => "Image"
	);

	private static $has_many = array(
		"Packages" => "Package"
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","Content");

		$fields->addFieldToTab("Root.Main", TextField::create("tagLine", "Tagline"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("initialButtonText", "First button text"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("initialButtonLocation", "First button location"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("sectionOneHeading", "Section One Heading"), "Metadata");

		$fields->addFieldToTab("Root.Main", HtmlEditorField::create("sectionOneText", "Section One Text"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("lastSentence", "Final sentence"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("finalLinkText", "Last button text"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("finalLinkLocation", "Last button location"), "Metadata");

		$fields->addFieldToTab("Root.Images", UploadField::create("mainImage", "Main Background Image"));

		$fields->addFieldToTab("Root.Images", UploadField::create("sectionOneImage", "Section One Image"));

		return $fields;

	}

}
class HomePage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function getCarPages() {
		$carPages = CarPage::get();
		return $carPages->count() ? $carPages : false;
	}

	public function getPackages() {
		$packages = Package::get()->limit(3);
		return $packages->count() ? $packages : false;
	}

	public function packagesCount() {
		$count = Package::get()->count();
		return $count;
	}

	public function urlEncodeLink($link) {
		return rawurlencode($link);
	}


	public function init() {
		parent::init();
		Requirements::clear();
		Requirements::css("https://fonts.googleapis.com/css?family=Josefin+Sans:400,700");
		Requirements::css("https://fonts.googleapis.com/css?family=Bad+Script");
		Requirements::css($this->ThemeDir()."/css/landing.min.css");
		Requirements::javascript($this->ThemeDir()."/javascript/homePage.js");
	}

}
