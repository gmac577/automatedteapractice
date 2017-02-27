@moodle
Feature: Moodle Example Feature file
  This feature file is an example of connect to a site
  and successfully logging into the site with accepted credntials
  The Moodle Education demo site will be used for this feature


  Scenario Outline: Moodle Log in Outline
    Given I am on the Moodle Sandbox login page
    And I enter "<username>" in the Username field
    And I enter "<password>" in the Password field
    When I click on the Log In button
    Then "<results>" will be displayed

    Examples:
    | username | password | results 					|
    | student    | moodle  | Barbara Gardner 	|
    | teacher  | moodle  | Jeffrey Sanders  	|
    | manager  | moodle  | Anna Alexander   	|
    | parent  | moodle  | Joyce Gardner     	|

    @wip
    Scenario: Single sign in example
      Given I am on the Moodle Sandbox login page
      When I sign is as a student
      Then I will be placed on the Student dashboard page
