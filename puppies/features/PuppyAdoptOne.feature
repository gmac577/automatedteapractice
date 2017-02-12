@puppyadoptone
Feature: Puppy adoption agency Feature File
  I like to adopt a Puppy
  As I love them
  I want a Puppy Adoption Feature

  Scenario Outline: Puppy Adoption site
  Given I am in Puppy adoption agency Page
  When I can see the list of puppies available to adopt
  And I click on next page "<next page index>" to see more puppies available to adopt
  And I click on previos page "<prev page index>" to see more puppies avaialbe to adopt
  And I click View Details "<view details index>" to adopt a puppy
  And I click on Adopt Me!
  And I select the additional products "<ad>" if needed
  And I click on Complete the Adoption button
  And I enter "<name>" in Name Field
  And I enter "<address>" in Address Field
  And I enter "<email>" in Email Field
  And I enter "<paytype>" in Pay type Field
  And I click on Place Order
  Then I get the Thank you message

  Examples:
  | name     | address     | email         | paytype        |next page index  |prev page index  |view detals index    |ad|
  | Anitha   | 123 Mn St   | abc@dev.com   | Check          |2                |2                |0                    |collar,toy,carrier,vet|
  | joseph   | 123 Sc St   | abc1@devcom   | Credit card    |2                |1                |2                    |carrier,toy|
  | Gordon   | 125 Mn St   | abc4@dev.com  | Purchase order |1                |0                |0                    |toy|
  | Jeff     | 1297 Mn St  | abc3@dev.com  | Purchase order |1                |1                |3                    |collar,vet,carrier|
