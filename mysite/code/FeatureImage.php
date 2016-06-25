<?php

class FeatureImage extends DataObject {

  private static $db = array(
    "Caption" => "Varchar"
  );

  private static $has_one = array(
    "Photo" => "Image",
    "HomePage" => "HomePage"
  );

  private static $summary_fields = array(
    "Caption" => "Image Caption",
    "Photo.CMSThumbnail" => ""
  );

  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create("Caption"),
      $uploader = UploadField::create("Photo")
    );

    $uploader->getValidator()->setAllowedExtensions(array(
      "png", "gif", "jpeg", "jpg"
    ));

    return $fields;
  }

}
