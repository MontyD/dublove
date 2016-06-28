<?php

class PackageHolder extends Page {

  private static $allowed_children = array("PackagePage");

	public function getCMSFields() {

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");
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
