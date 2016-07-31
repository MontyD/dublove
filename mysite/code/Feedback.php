<?php

class Feedback extends DataObject
{
    private static $db = array(
    'Name' => 'Varchar',
    'Email' => 'Varchar',
    'Feedback' => 'Text',
    'Visible' => 'Boolean',
  );

    private static $has_one = array(
    'FeedbackPage' => 'FeedbackPage',
  );

    private static $summary_fields = array(
    'Name' => 'Name',
    'Feedback' => 'Feedback',
    'Visible' => 'Allowed on feedback page',
  );

    public function getCMSFields()
    {
        $fields = FieldList::create(
      TextField::create('Name', 'Name'),
      TextField::create('Email', 'Email'),
      TextareaField::create('Feedback', 'Feedback'),
      new CheckboxField('Visible', 'Visible on feedback page')
    );

        return $fields;
    }
}
