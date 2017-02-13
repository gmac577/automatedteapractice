
Feature:  Passion Tea Checkout Feature File
This is a feature that enters in the site into Checkout

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<Email>" in Email Field
And I enter "<Name>" in Name Field
And I enter "<Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Card Number>" in Card Number Field
And I enter "<CardHolder Name>" in CardHolder Name Field
And I enter "<Verification Code>" in Verification Code Field
When I click Submit Button
Then It should successfully make the payment

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |Anitha  |560 Sec St Eagan MN  | VISA      |511111111111111111  |Anitha Elangovan   |000              |

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<Email>" in Email Field
And I enter "<Name>" in Name Field
And I enter "<Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Card Number>" in Card Number Field
And I enter "<CardHolder Name>" in CardHolder Name Field
And I do not enter "<Verification Code>" in Verification Code Field
When I click Submit Button
Then I will see the "<Error Message>"

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |Anitha  |560 Sec St Eagan MN  | VISA      |5111111111111111  |Anitha Elangovan     |                 |
|Enter the Verification Code|

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<Email>" in Email Field
And I enter "<Name>" in Name Field
And I enter "<Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Card Number>" in Card Number Field
And I do not enter "<CardHolder Name>" in CardHolder Name Field
And I enter "<Verification Code>" in Verification Code Field
When I click Submit Button
Then I will see the "<Error Message>"

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |Anitha  |560 Sec St Eagan MN  | VISA      |5111111111111111    |                   |000              |
|Enter the CardHolder Name|

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<Email>" in Email Field
And I do not enter "<Name>" in Name Field
And I enter "<Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Card Number>" in Card Number Field
And I enter "<CardHolder Name>" in CardHolder Name Field
And I enter "<Verification Code>" in Verification Code Field
When I click Submit Button
Then I will see the "<Error Message>"

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |        |560 Sec St Eagan MN  | VISA      |5111111111111111    |                   |000              |
|Enter the Name|

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<Email>" in Email Field
And I enter "<Name>" in Name Field
And I enter "<Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Special Card Number>" in Card Number Field
And I enter "<CardHolder Name>" in CardHolder Name Field
And I enter "<Verification Code>" in Verification Code Field
When I click Submit Button
Then I will see the "<Error Message>"

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |Anitha  |560 Sec St Eagan MN  | VISA      |51ah11111111111111  |Anitha Elangovan   |000              |
|Enter a Valid Card Number|

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<Email>" in Email Field
And I enter "<Name>" in Name Field
And I enter "<Invalid Address>" in Address Field
And I enter "<Card Type>" in Card Type Field
And I enter "<Special Card Number>" in Card Number Field
And I enter "<CardHolder Name>" in CardHolder Name Field
And I enter "<Verification Code>" in Verification Code Field
When I click Submit Button
Then I will see the Error Message

Examples:
|Email               |Name    |Address              |Card Type  |Card Number         |CardHolder Name    |Verification Code|
|anitha@example.com  |Anitha  |$%^&*()$$$dsfjsdhf   | VISA      |511111111111111111  |Anitha Elangovan   |000              |
|Enter a Valid Address|
