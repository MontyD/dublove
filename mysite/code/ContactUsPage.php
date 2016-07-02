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
      'ContactUsForm'
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
           'PromParty' => 'Prom / Party',
           'Picnic' => 'Picnic',
           'Other' => 'Something a bit different...',
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
      $form->sessionMessage("Thanks for contacting us, we will be in touch shortly.", "Good");

      return $this->redirectBack();
    }

    public function init()
    {
        parent::init();

        Requirements::clear();
        Requirements::css("https://fonts.googleapis.com/css?family=Josefin+Sans:400,700");
        Requirements::css("https://fonts.googleapis.com/css?family=Bad+Script");
        Requirements::css($this->ThemeDir()."/css/contactus.min.css");
        Requirements::javascript($this->ThemeDir()."/javascript/page.js");
    }
}
