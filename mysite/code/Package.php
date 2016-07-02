<?php

class Package extends DataObject {

  private static $db = array(
    "Name" => "Varchar",
    "Description" => "HTMLText"
  );

  private static $has_one = array(
    "Photo" => "Image",
    "CarPage" => "CarPage"
  );

  private static $summary_fields = array(
    "Name" => "Name of package",
    "Photo.CMSThumbnail" => ""
  );

  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create("Name"),
      HtmlEditorField::create("Description"),
      $uploader = UploadField::create("Photo")
    );

    $uploader->getValidator()->setAllowedExtensions(array(
      "png", "gif", "jpeg", "jpg"
    ));

    return $fields;
  }


}
