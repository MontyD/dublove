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
      TextareaField::create("ShortDescription"),
      CheckboxField::create("Frank"),
      CheckboxField::create("Frannie"),
      HtmlEditorField::create("FrankDescription"),
      HtmlEditorField::create("FrannieDescription"),
      $FrankUploader = UploadField::create("FrankPhoto"),
      $FrannieUploader = UploadField::create("FranniePhoto")
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
