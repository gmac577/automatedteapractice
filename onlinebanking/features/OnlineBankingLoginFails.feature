@bankloginfails

Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and login fails  with incorrect credntials
  The online banking website will be used for this feature

  Scenario: Online Banking Web Page login
    Given I am on the online banking web login page
    When I enter incorrect credentials
    And I click on Sign in button
    Then I get the Error Notification alert
    And I click on close button
