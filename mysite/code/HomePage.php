<?php
class HomePage extends Page {

	private static $db = array(
		"tagLine" => "Varchar",
		"sectionOneHeading" => "Varchar",
		"sectionOneText" => "HTMLText"
	);

	private static $has_one = array(
	  "sectionOneImage" => "Image",
	);

	private static $has_many = array(
		"FeatureImage" => "FeatureImage"
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");

		$fields->addFieldToTab("Root.Main", TextField::create("tagLine", "Tagline"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextField::create("sectionOneHeading", "Section One Heading"), "Metadata");

		$fields->addFieldToTab("Root.Main", HtmlEditorField::create("sectionOneText", "Section One Text"), "Metadata");

		$fields->addFieldToTab("Root.Images", UploadField::create("sectionOneImage", "Section One Image"));

		$fields->addFieldToTab("Root.Images", GridField::create(
			"FeatureImage",
			"Images for section two",
			$this->FeatureImage(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;

	}

}
class HomePage_Controller extends Page_Controller {


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
