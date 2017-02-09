@puppyadoptnegative
Feature:  Puppy adoption agency Feature File
This is a feature that enters in the Puppy adoption agency site and allows to adopt a puppy

Scenario: Puppy adoption agency Page
Given I am in Puppy adoption agency Page
And I can see the list of puppies available to adopt
When I click on View Details
And I click on Adopt Me!
And I select the additional products if needed
And I click on Complete the Adoption button
And I do not enter the payment Details
And I click on Place Order
Then I get the error message
