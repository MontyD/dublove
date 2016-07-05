<?php

class ContactUsPage extends Page
{
    private static $db = array(
    );

    private static $has_one = array(
      'mainImage' => 'Image',
    );

    private static $has_many = array(
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', UploadField::create('mainImage', 'Main image'), 'Metadata');

        return $fields;
    }
}

class ContactUsPage_Controller extends Page_Controller
{
    private static $allowed_actions = array(
      'ContactUsForm',
    );

    public function ContactUsForm()
    {
        $contactForm = Form::create(
        $this,
        __FUNCTION__,
        FieldList::create(
          TextField::create('Name', 'Your Name')
            ->addExtraClass('required'),
          DropdownField::create('Package', 'Which Package are you interested in?', array(
           'Wedding' => 'Wedding',
           'PromParty' => 'Prom / Party',
           'Picnic' => 'Picnic',
           'Other' => 'Something a bit different...',
         )) ->setEmptyString('Please select')
            ->addExtraClass('required'),
          DateField::create('date', 'Date of booking')
            ->setConfig('dateformat', 'dd/MM/yyyy'),
          EmailField::create('Email', 'Your Email')
            ->addExtraClass('required'),
          TextField::create('Telephone number', 'Telephone'),
          TextareaField::create('Inquiry', 'Inquiry')
            ->addExtraClass('required')
        ),
        FieldList::create(
          FormAction::create('sendContactForm', 'Send')
        ),
        RequiredFields::create('Name', 'Package', 'Email', 'Inquiry')
      );

        $contactForm->enableSpamProtection()
        ->fields()->fieldByName('Captcha');

        return $contactForm;
    }

    public function sendContactForm($data, $form)
    {
        $form->sessionMessage('Thanks for contacting us, we will be in touch shortly.', 'Good');

        return $this->redirectBack();
    }

    public function init()
    {
        parent::init();

        Requirements::clear();
        Requirements::css('https://fonts.googleapis.com/css?family=Josefin+Sans:400,700');
        Requirements::css('https://fonts.googleapis.com/css?family=Bad+Script');
        Requirements::css($this->ThemeDir().'/css/contactus.min.css');
        Requirements::javascript($this->ThemeDir().'/javascript/contactPage.js');
    }
}
