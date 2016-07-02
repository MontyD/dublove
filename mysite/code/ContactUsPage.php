<?php

class ContactUsPage extends Page
{
    private static $db = array(
    );

    private static $has_one = array(
    );

    private static $has_many = array(
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;
    }
}

class ContactUsPage_Controller extends Page_Controller
{
    private static $allowed_actions = array(
    );

    public function ContactUsForm()
    {
        $contactForm = Form::create(
        $this,
        __FUNCTION__,
        FieldList::create(
          TextField::create('Your Name', 'Name'),
          new OptionsetField('Package', 'Which Package are you interested in?', array(
           'Wedding' => 'Wedding',
           'Prom / Party' => 'PromParty',
           'Picnic' => 'Picnic',
           'Something a bit different...' => 'Other',
         )),
          EmailField::create('Your Email', 'Email'),
          TextField::create('Telephone number', 'Telephone')
        ),
        FieldList::create(
          FormAction::create('sendContactForm', 'Send')
        ),
        RequiredFields::create('Name', 'Package', 'Email')
      );

      return $contactForm;
    }

    public function sendContactForm($data, $form)
    {

    }

    public function init()
    {
        parent::init();
    }
}
