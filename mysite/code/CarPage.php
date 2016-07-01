<?php

class CarPage extends Page {

	private static $db = array(
		"Name" => "Varchar",
		"mainDescription" => "HTMLText"
	);

	private static $has_one = array(
	  "largeImage" => "Image",
		"mediumImage" => "Image",
		"smallImage" => "Image",
		"squareImage" => "Image"
	);

	private static $has_many = array(
		"FeatureImages" => "FeatureImage",
		"Packages" => "Package"
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");

		$fields->addFieldToTab("Root.Main", TextField::create("Name", "Name"), "Metadata");

		$fields->addFieldToTab("Root.Main", HtmlEditorField::create("mainDescription", "Description"), "Metadata");

		$fields->addFieldToTab("Root.Main", GridField::create(
			"Packages",
			"Packages list",
			$this->Packages(),
			GridFieldConfig_RecordEditor::create()
		), "Metadata");

		$fields->addFieldToTab("Root.Images", UploadField::create("largeImage", "Large image"));
		$fields->addFieldToTab("Root.Images", UploadField::create("mediumImage", "Medium image"));
		$fields->addFieldToTab("Root.Images", UploadField::create("smallImage", "Small image"));
		$fields->addFieldToTab("Root.Main", UploadField::create("squareImage", "Square image"), "mainDescription");

		$fields->addFieldToTab("Root.Images", GridField::create(
			"FeatureImages",
			"Images for slider",
			$this->FeatureImages(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;

	}

}

class CarPage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
