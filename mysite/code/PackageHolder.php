<?php

class PackageHolder extends Page
{
    private static $db = array(
    'lastSentence' => 'Text',
    'finalLinkText' => 'Varchar',
    'finalLinkLocation' => 'Varchar',
  );

    private static $has_many = array(
    'Packages' => 'Package',
  );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', GridField::create(
          'Packages',
          'Packages list',
          $this->Packages(),
          GridFieldConfig_RecordEditor::create()
        ), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('lastSentence', 'Final sentence'), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('finalLinkText', 'Last button text'), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('finalLinkLocation', 'Last button location'), 'Metadata');

        return $fields;
    }
}
class PackageHolder_Controller extends Page_Controller
{
    private static $allowed_actions = array(
    );

    public function init()
    {
        parent::init();
    }
}
