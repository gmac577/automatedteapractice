@banktransfer

Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and goto transfers tab and make transfers
  The online banking website will be used for this feature

Scenario: Online Banking Web Page Pay bills
  Given I logged in to the bank website with "TEST12648" "TEST1234" "Symitar" "/assets/images/logo/sym/logo@2x.png"
  When I must see transfer link and click on the same
  And I fill the details in the transfer page
  And I click on transfer funds button
  And I get the confirmation alert to transfer the amount in which I click the transfer button
  And I must see success message that the transfer is made and click on OKAY button
  Then I am taken to transfer page again

Scenario: Online Banking Web Page Pay bills
  Given I logged in to the bank website with "TEST12648" "TEST1234" "Symitar" "/assets/images/logo/sym/logo@2x.png"
  When I must see transfer link and click on the same
  And I fill the details in the transfer page
  And I click on transfer funds button
  And I get the confirmation alert to transfer the amount in which I click the Cancel button
  Then I am taken to transfer page again
