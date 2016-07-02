<?php

class PackageHolder extends Page {

  private static $has_many = array(
    "Packages" => "Package"
  );

	public function getCMSFields() {

		$fields = parent::getCMSFields();

    $fields->addFieldToTab("Root.Main", GridField::create(
      "Packages",
      "Packages list",
      $this->Packages(),
      GridFieldConfig_RecordEditor::create()
    ), "Metadata");

		return $fields;
	}

}
class PackageHolder_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
