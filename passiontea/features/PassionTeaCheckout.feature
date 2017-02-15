@passionteacheckout
Feature:  Passion Tea Checkout Feature File
This is a feature that enters in the site into Checkout

Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
When I enter "<Email>" in Email Field
And I enter "<Name>" in Name Field
And I enter "<Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Card Number>" in Card Number Field
And I enter "<CardHolder Name>" in CardHolder Name Field
And I enter "<Verification Code>" in Verification Code Field
And I click Submit Button
Then It should successfully make the payment

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |Anitha  |560 Sec St Eagan MN  | VISA      |511111111111111111  |Anitha Elangovan   |000              |
