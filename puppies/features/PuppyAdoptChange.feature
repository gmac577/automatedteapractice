@puppyadoptchange
Feature:  Puppy adoption agency Feature File
This is a feature that enters in the Puppy adoption agency site and change my mind not to adopt a puppy

Scenario: Puppy adoption agency Page
Given I am in Puppy adoption agency Page
And I can see the list of puppies available to adopt
When I click on View Details to adopt a puppy
And I click on Adopt Me!
And I click on Change Your mind button
And The pop up asks me Are you sure?
And I click on Ok
Then I get the cart empty message
