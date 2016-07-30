<?php

class PhotosPage extends Page
{
    private static $db = array(
    );

    private static $has_one = array(
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

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
                 "HidePhotosPage" => false,
               ));

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
        Requirements::javascript('https://maps.googleapis.com/maps/api/js?key=AIzaSyBzICHyqdCdY19NqntpSca1YBXo2-YdCEI&callback=initMap');
    }
}
