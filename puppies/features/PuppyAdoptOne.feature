@puppyadoptone
Feature: Puppy adoption agency Feature File
  I like to adopt a Puppy
  As I love them
  I want a Puppy Adoption Feature

  Scenario Outline: Puppy Adoption site
  Given: I am in Puppy adoption agency Page
  When I can see the list of puppies available to adopt
  And I click on View Details to adopt a puppy
  And I click on Adopt Me!
  And I select the additional products if needed
  And I click on Complete the Adoption button
  And I enter "<name>" in Name Field
  And I enter "<address>" in Address Field
  And I enter "<email>" in Email Field
  And I enter "<paytype>" in Pay type Field
  And I click on Place Order
  Then I get the Thank you message

  Examples:

  | name    | address    | email           | paytype |
  | Anitha   | 123 Mn St   | abc@dev.com  | Check     |
  | Gordon   | 125 Sc St   | xyz@test.com | Credit card|
  | Joe      | 123 Sc St   | xpz@test.com | Purchase order|
