<?php

class FeatureImage extends DataObject {

  private static $db = array(
    "Caption" => "Varchar",
    "HidePhotosPage" => "Boolean"
  );

  private static $has_one = array(
    "Photo" => "Image",
    "CarPage" => "CarPage"
  );

  private static $summary_fields = array(
    "Caption" => "Image Caption",
    "Photo.CMSThumbnail" => ""
  );

  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create("Caption"),
      new CheckboxField("HidePhotosPage", "Hide on photos page"),
      $uploader = UploadField::create("Photo")
    );

    $uploader->getValidator()->setAllowedExtensions(array(
      "png", "gif", "jpeg", "jpg"
    ));

    return $fields;
  }

}
