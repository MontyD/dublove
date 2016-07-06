<?php

class Package extends DataObject {

  private static $db = array(
    "Name" => "Varchar",
    "ShortDescription" => "Text",
    "Frank" => "Boolean",
    "Frannie" => "Boolean",
    "FrankDescription" => "HTMLText",
    "FrannieDescription" => "HTMLText"
  );

  private static $has_one = array(
    "FranniePhoto" => "Image",
    "FrankPhoto" => "Image",
    "PackageHolder" => "PackageHolder"
  );

  private static $summary_fields = array(
    "Name" => "Name of package",
    "FranniePhoto.CMSThumbnail" => "",
    "FrankPhoto.CMSThumbnail" => ""
  );

  public function getCMSFields() {

    $fields = FieldList::create(
      TextField::create("Name"),
      TextareaField::create("ShortDescription", "Short description"),
      new CheckboxField("Frank"),
      new CheckboxField("Frannie"),
      HtmlEditorField::create("FrankDescription", "Description for Frank"),
      HtmlEditorField::create("FrannieDescription", "Description for Frannie"),
      $FrankUploader = UploadField::create("FrankPhoto", "Frank Photo"),
      $FrannieUploader = UploadField::create("FranniePhoto", "Frannie Photo")
    );

    $FrankUploader->getValidator()->setAllowedExtensions(array(
      "png", "gif", "jpeg", "jpg"
    ));

    $FrannieUploader->getValidator()->setAllowedExtensions(array(
      "png", "gif", "jpeg", "jpg"
    ));

    return $fields;
  }


}
