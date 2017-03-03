@banklogin
Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and successfully logging into the website with accepted credntials
  The online banking website will be used for this feature

  Scenario: Online Banking Web Page login
    Given I am on the online banking web login page
    When I enter user credentials
    And I enter the Institution Field
    And I click on Sign in button
    Then I enter into the online banking website
