<?php

class Package extends DataObject {

  private static $db = array(
    "Name" => "Varchar",
    "Description" => "HTMLText",
  );

  private static $has_one = array(
    "Photo" => "Image",
    "HomePage" => "HomePage",
    "PackagesPage" => "PackagesPage"
  );

  private static $summary_fields = array(
    "Name" => "Name of Supplier",
    "Description" => "Link to their website",
    "Photo.CMSThumbnail" => ""
  );

  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create("Name"),
      HTMLTextField::create("Description"),
      $uploader = UploadField::create("Photo")
    );

    $uploader->getValidator()->setAllowedExtensions(array(
      "png", "gif", "jpeg", "jpg"
    ));

    return $fields;
  }


}
