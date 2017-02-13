@puppyadoptprevnextdisabled
Feature:  Puppy adoption agency Feature File
This is a feature that enters in the Puppy adoption agency site and allows to check the previous and next page disabled

Scenario: Puppy adoption agency Page
Given I am in Puppy adoption agency Page
When I can see the list of puppies available to adopt
And I check whether the previous page link is disabled
And I click next page button twice
And I check if the next page link is disabled
Then I check previous page link is enabled
