<?php
class SiteConfigExtension extends DataExtension {

  private static $db = array(
    'facebookLink' => 'Varchar',
    'contactInfo' => 'Text'
  );

  public function updateCMSFields(FieldList $fields) {
    $fields->addFieldToTab('Root.Main', TextField::create('facebookLink', 'Facebook Link'));
    $fields->addFieldToTab('Root.Main', TextareaField::create('contactInfo', 'Contact info'));
  }

}
