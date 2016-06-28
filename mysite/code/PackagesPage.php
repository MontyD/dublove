<?php

class PackagesPage extends Page {

	private static $db = array(
		"Name" => "Varchar",
		"tagLine" => "Varchar",
		"mainDescription" => "HTMLText"
	);

	private static $has_many = array(
	  "Packages" => "Package"
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");

    $fields->addFieldToTab("Root.Main", GridField::create(
      "Packages",
      "Packages list",
      $this->Packages(),
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
