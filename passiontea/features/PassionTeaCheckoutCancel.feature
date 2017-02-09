@passionteacheckoutcancel
Feature:  Passion Tea Checkout Feature File
This is a feature that enters in the site into Checkout


Scenario: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<email>" in the checkout email field
And I enter "<name>" in the checkout name Field
And I enter "<address>" in the checkout Address Field
And I enter "Visa" in the checkout Card Type Field
And I enter "<cardnumber>" in the checkout Card Number Field
And I enter "<cardholdername>" in the checkout CardHolder Name Field
And I enter "<verificationcode>" in the checkout Verification Code Field
When I click the Cancel link
Then It should successfully make the payment
