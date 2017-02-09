@passionteacheckout
Feature:  Passion Tea Checkout Feature File
This is a feature that enters in the site into Checkout

@wip
Scenario Outline: Passion Tea Checkout Page
Given I am in Passion Tea  Checkout Page
And I enter "<email>" in the checkout email field
And I enter "<name>" in the checkout name Field
And I enter "<address>" in the checkout Address Field
And I enter "<cardtype>" in the checkout Card Type Field
And I enter "<cardnumber>" in the checkout Card Number Field
And I enter "<cardholdername>" in the checkout CardHolder Name Field
And I enter "<verificationcode>" in the checkout Verification Code Field
When I click the PlaceOrder button
Then It should successfully make the payment

Examples:
| email               | name      | address             | cardtype        | cardnumber          | cardholdername     | verificationcode |
| anitha@example.com  | Anitha    | 60 Sec St Eagan MN  | Visa            | 511111111111111111  | Anitha Elangovan   | 000              |
| gordon@test.com     | Gordon    | 00 Fr St Tumkur CA  | Mastercard      | 400000000000000000  | Gordon McCowey     | 009              |
| jeff@test.com       | Jeff      | 00 Sec St Tumkur CA | American Express| 900000000000000000  | Jeff Morgon        | 008              |
| gopinath@test.com   | Gopinath  | 00 Fr St Takar CA   | Diners Club     | 100000000000000000  | Gopinath Ayyappan  | 009              |
| jeff@test.com       | Jeff      | 00 Sec St Tumkur CA | Visa            | 711111111111111111  | Jeff Morgon        | 006              |

@wip
Scenario: Single cardtype in example
  Given I am on the Passiontea Checkout page
  When I use card type Visa
  Then I will be able to place order with Visa card

Scenario: Another example
    Given I am on the Passiontea Checkout page
    When I complete the checkout page
    Then the order will be placed
