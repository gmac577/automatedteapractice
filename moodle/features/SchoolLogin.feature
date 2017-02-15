@login
Feature: Demo School Site Login
  I want to login to school site to see the Details
  As I need information
  I want the login feature

  Scenario Outline: School site Login Outline
    Given I enter into the school site
    When I click in Log in link
    And I enter the "<username>" in the username Field
    And I enter the "<password>" in the password Field
    And I click on login button
    Then "<results>" are displayed

    Examples:
    | username | password | results 					|
    | student  | moodle   | Barbara Gardner 	|
    | teacher  | moodle   | Jeffrey Sanders  	|
    | manager  | moodle   | Anna Alexander   	|
    | parent   | moodle   | Joyce Gardner     |


    Scenario: Single sign in example
      Given I am on the Moodle Sandbox login page
      When I sign is as a student
      Then I will be placed on the Student dashboard page
