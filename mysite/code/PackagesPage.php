<?php

class PackagesPage extends Page {

	private static $db = array(
		"Name" => "Varchar",
		"shortDescription" => "Text",
		"mainDescription" => "HTMLText"
	);

	private static $has_one = array(
    "mainImage" => "Image",
	);

  private static $has_many = array(
    "FeatureImages" => "FeatureImage"
  );

  private static $can_be_root = false;

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");

    $fields->addFieldToTab("Root.Main", TextField::create("Name", "Package Name"), "Metadata");

		$fields->addFieldToTab("Root.Main", TextareaField::create("shortDescription", "Short description"), "Metadata");

		$fields->addFieldToTab("Root.Main", HtmlEditorField::create("mainDescription", "Main description"), "Metadata");

		$fields->addFieldToTab("Root.Images", UploadField::create("mainImage", "Main Image"));

    $fields->addFieldToTab("Root.Images", GridField::create(
			"FeatureImages",
			"Images for slider",
			$this->FeatureImages(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}

}
class PackagesPage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
