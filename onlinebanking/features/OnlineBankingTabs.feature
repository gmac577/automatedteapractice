@bankfeature

Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and log into the website and check the required features
  The online banking website will be used for this feature

# Scenario: Online Banking Web Page login
#   Given I am on the online banking web login page
#   When I enter "TEST12650" in username field
#   And I enter "TEST1234" in password field
#   And I enter "Symitar" in institution Field
#   And I click on Sign in button
#   And I enter into the online banking website with the respective institution "/assets/images/logo/sym/logo.png"
#   Then I must see transfer link and click on the same


Scenario: Online Banking Web Page Pay bills
  Given I logged in to the bank website with "TEST12648" "TEST1234" "Symitar" "/assets/images/logo/sym/logo@2x.png"
  When I must see paybill link and click on the same
  And I click on Scheduled tab
  And I must see Make a new payment button and click on the same
  Then I fill the Pay a Bill Form and click on Pay Bill button
