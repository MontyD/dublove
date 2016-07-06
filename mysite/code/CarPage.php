<?php

class CarPage extends Page
{
    private static $db = array(
        'Name' => 'Varchar',
        'mainDescription' => 'HTMLText',
        'tagLine' => 'Text',
    );

    private static $has_one = array(
      'backgroundImage' => 'Image',
      'descriptionImage' => 'Image',
    );

    private static $has_many = array(
        'FeatureImages' => 'FeatureImage',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Content');

        $fields->addFieldToTab('Root.Main', TextField::create('Name', 'Name'), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('tagLine', 'Tag Line'), 'Metadata');

        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('mainDescription', 'Description'), 'Metadata');

        $fields->addFieldToTab('Root.Images', UploadField::create('backgroundImage', 'Background image'));
        $fields->addFieldToTab('Root.Main', UploadField::create('descriptionImage', 'Description image'), 'mainDescription');

        $fields->addFieldToTab('Root.Images', GridField::create(
            'FeatureImages',
            'Images for slider',
            $this->FeatureImages(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }
}

class CarPage_Controller extends Page_Controller
{
    private static $allowed_actions = array(
    );

    public function returnPackages()
    {
        if (strlen($this->Name) < 1) {
          return false;
        }
        $topTitle = $this->Name;
        $packages = Package::get()->filter(array(
                 $topTitle => true,
               ));

        return $packages->count() ? $packages : false;
    }

    public function init()
    {
        parent::init();
    }
}
