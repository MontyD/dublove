<?php

class PhotosPage extends Page
{
    private static $db = array(
      'ShortDescription' => 'Text',
      'lastSentence' => 'Text',
      'finalLinkText' => 'Varchar',
      'finalLinkLocation' => 'Varchar',
    );

    private static $has_one = array(
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeFieldFromTab('Root.Main', 'Content');

        $fields->addFieldToTab('Root.Main', TextareaField::create('ShortDescription', 'Short description'), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('lastSentence', 'Final sentence'), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('finalLinkText', 'Last button text'), 'Metadata');

        $fields->addFieldToTab('Root.Main', TextField::create('finalLinkLocation', 'Last button location'), 'Metadata');

        return $fields;
    }
}

class PhotosPage_Controller extends Page_Controller
{
    private static $allowed_actions = array(
    );

    public function returnPhotos()
    {
        $images = FeatureImage::get()->filter(array(
                 'HidePhotosPage' => false,
               ))->sort('Created');

        return $images->count() ? $images : false;
    }

    public function init()
    {
        parent::init();

        Requirements::clear();
        Requirements::css('https://fonts.googleapis.com/css?family=Josefin+Sans:400,700');
        Requirements::css('https://fonts.googleapis.com/css?family=Bad+Script');

        Requirements::css($this->ThemeDir().'/css/photospage.min.css');
        Requirements::javascript($this->ThemeDir().'/javascript/photosPage.js');
    }
}
