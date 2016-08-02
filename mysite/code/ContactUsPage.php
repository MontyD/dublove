<?php

class ContactUsPage extends Page
{
    private static $db = array(
      'OpeningParagraph' => 'Text',
    );

    private static $has_many = array(
      'Contacts' => 'Contact',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextareaField::create('OpeningParagraph', 'Opening Paragraph'), 'Content');

        $fields->addFieldToTab('Root.Contacts', GridField::create(
          'Contacts',
          'Contacts list',
          $this->Contacts(),
          GridFieldConfig_RecordEditor::create()
        ));

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
         ))->setEmptyString('Please select')
            ->addExtraClass('required'),
          DropdownField::create('Car', 'Which car are you interested in?', array(
             'Frannie' => 'Frannie',
             'Frank' => 'Frank',
           ))->setEmptyString('Please select'),
          DateField::create('Date', 'Date of booking')
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
        $contact = Contact::create();
        $contact->ContactUsPageID = $this->ID;
        $contact->DateCreated = date('Y-m-d H:i:s');
        $form->saveInto($contact);
        $contact->write();

        $email = new Email("montydawsonauto@gmail.com", "hello@montydawson.co.uk", "New Dublove Contact", "New contact has been submitted \n\nName: " . $data['Name'] . "\n\nPackage: " . $data['Package'] . "\n\nCar: " . $data['Car'] . "\n\nDate: " . $data['Date'] . "\n\nEmail: " . $data['Email'] . "\n\nInquiry: " . $data['Inquiry']);
        $email->sendPlain();

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
        Requirements::javascript('https://maps.googleapis.com/maps/api/js?key=AIzaSyBzICHyqdCdY19NqntpSca1YBXo2-YdCEI&callback=initMap');
    }
}
