<?php
class SiteConfigExtension extends DataExtension {

  private static $db = array(
    'contactInfo' => 'Text'
  );

  public function updateCMSFields(FieldList $fields) {
    $fields->addFieldToTab('Root.Main', TextareaField::create('contactInfo', 'Contact info'));
  }

}
