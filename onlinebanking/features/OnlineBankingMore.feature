@bankmoretab

Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and login with valid credntials and check for more tab
  The online banking website will be used for this feature

  Scenario: Online Banking Web Page More tab
    Given I logged in to the bank website with "TEST12650" "TEST1234" "Symitar" "/assets/images/logo/sym/logo.png"
    When I see more tab and click on the same
    Then I must see the dropdown under more tab
