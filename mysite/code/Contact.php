<?php

class Contact extends DataObject {

  private static $db = array(
    "Name" => "Varchar",
    "Package" => "Varchar",
    "Date" => "Date",
    "DateCreated" => "Varchar",
    "Email" => "Varchar",
    "Telephone" => "Varchar",
    "Inquiry" => "Text"
  );

  private static $has_one = array(
    "ContactUsPage" => "ContactUsPage"
  );

  private static $summary_fields = array(
    "Name" => "Name",
    "Email" => "Email",
    "Date" => "Date of booking"
  );

  public function getCMSFields() {

    $fields = FieldList::create(
      TextField::create("Name", "Name"),
      DropdownField::create('Package', 'Package', array(
       'Wedding' => 'Wedding',
       'PromParty' => 'Prom / Party',
       'Picnic' => 'Picnic',
       'Other' => 'Something a bit different...',
     )),
      TextField::create("Date", "Date of potential booking"),
      TextField::create("Email", "Email address"),
      TextField::create("Telephone", "Telephone"),
      TextareaField::create("Inquiry", "Inquiry")
    );

    return $fields;
  }


}
