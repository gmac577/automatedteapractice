@banklogin
Feature: Online Banking Feature file
  This feature file is to connect to the online banking website
  and successfully logging into the website with accepted credntials
  The online banking website will be used for this feature

  Scenario Outline: Online Banking Web Page login
    Given I am on the online banking web login page
    When I enter "<username>" in username field
    And I enter "<password>" in password field
    And I enter "<institution>" in institution Field
    And I click on Sign in button
    And I enter into the online banking website with the respective institution "<logo>"
    Then I click on Sign out button and checks I took me to the signin page


  Examples:
  | username     | password      | institution   |logo                             |
  | TEST12648    | TEST1234      | Symitar       |/assets/images/logo/sym/logo@2x.png |
  #| TEST12648     | TEST1234      | Alliance      |/assets/images/logo/sym/logo.png |
  # | tbone        | 1234          | Sharetec      |/assets/images/logo/bom/logo.png |
  # | 4306         | Pl@t!num123   | Platinum      |/assets/images/logo/plt/logo.png |
