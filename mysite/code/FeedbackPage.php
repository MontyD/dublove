<?php

class FeedbackPage extends Page
{
    private static $db = array(
      'OpeningParagraph' => 'Text',
    );

    private static $has_many = array(
      'Feedbacks' => 'Feedback',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Content');

        $fields->addFieldToTab('Root.Main', TextareaField::create('OpeningParagraph', 'Opening Paragraph'), 'Metadata');

        $fields->addFieldToTab('Root.Feedback', GridField::create(
          'Feedbacks',
          'Feedback list',
          $this->Feedbacks(),
          GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }
}

class FeedbackPage_Controller extends Page_Controller
{
    private static $allowed_actions = array(
      'FeedbackForm',
    );

    public function FeedbackForm()
    {
        $feedbackForm = Form::create(
        $this,
        __FUNCTION__,
        FieldList::create(
          TextField::create('Name', 'Your Name')
            ->addExtraClass('required'),
          EmailField::create('Email', 'Your Email')
            ->addExtraClass('required'),
          TextareaField::create('Feedback', 'Your feedback')
            ->addExtraClass('required')
        ),
        FieldList::create(
          FormAction::create('addFeedback', 'Submit your feedback')
        ),
        RequiredFields::create('Name', 'Email', 'Feedback')
      );

        $feedbackForm->enableSpamProtection()
        ->fields()->fieldByName('Captcha');

        return $feedbackForm;
    }

    public function addFeedback($data, $form)
    {
        $feedback = Feedback::create();
        $feedback->FeedbackPageID = $this->ID;
        $form->saveInto($feedback);
        $feedback->write();

        $form->sessionMessage("Thank you for your feedback, Mike and Jane will have a read before it is added above.", 'Good');

        return $this->redirectBack();
    }

    public function init()
    {
        parent::init();
    }
}
