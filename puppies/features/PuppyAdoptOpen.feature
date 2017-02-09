@puppyadoptopen
Feature:  Puppy adoption agency Feature File
This is to open the puppy adoption site and close after 5 seconds

Scenario: Puppy adoption agency Page
Given I am in Puppy adoption agency Page
When I can see the list of puppies available to adopt
Then I wait for 5 seconds and close the site
