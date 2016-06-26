<?php
class CarPage extends Page {

	private static $db = array(
		"Name" => "Varchar",
		"tagLine" => "Varchar",
		"mainDescription" => "HTMLText"
	);

	private static $has_one = array(
	  "mainImage" => "Image"
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");

		$fields->addFieldToTab("Root.Main", TextField::create("Name", "Name"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("tagLine", "Tag Line"), "Metadata");

		$fields->addFieldToTab("Root.Main", HtmlEditorField::create("mainDescription", "Description"), "Metadata");

		$fields->addFieldToTab("Root.Images", UploadField::create("mainImage", "Main image"));

		return $fields;

	}

}
class CarPage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		Requirements::css("https://fonts.googleapis.com/css?family=Josefin+Sans:400,700");
		Requirements::css("https://fonts.googleapis.com/css?family=Bad+Script");
		Requirements::css($this->ThemeDir()."/css/landing.min.css");
		Requirements::javascript($this->ThemeDir()."/javascript/homePage.js");
	}

}
