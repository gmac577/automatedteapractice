@banklogin
Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and successfully logging into the website with accepted credntials
  The online banking website will be used for this feature

  Scenario Outline: Online Banking Web Page login
    Given I am on the online banking web login page
    When I enter '<username>' in username Field
    And I enter '<password>' in the password Field
    And I click on Sign in button
    Then I enter into the online banking website


  Examples:
  | username   |  password     |
  | TEST12650  |  TEST1234     |
  #| TEST12648  |  TEST1234     |
  #| TEST12667  |  TEST1234     |
