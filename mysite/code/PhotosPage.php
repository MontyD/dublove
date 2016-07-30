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
    }
}
