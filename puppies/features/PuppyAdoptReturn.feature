@puppyadoptreturn
Feature:  Puppy adoption agency Feature File
This is a feature that enters in the Puppy adoption agency site and allows to adopt a puppy

Scenario: Puppy adoption agency Page
Given I am in Puppy adoption agency Page
When I can see the list of puppies available to adopt
And I click on View Details
And I click on Return to List link
Then I can see the list of puppies available to adopt
