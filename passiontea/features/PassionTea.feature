@passiontea
Feature: Passion Tea Feature File
This is a feature that enters in the site into Lets Talk Area and click on Submit Button

Scenario: Passion Tea Lets Talk Area
Given I am in Passion Tea Lets Talk Tea Page
And I enter "Anitha" in Name Field
And I enter "something@example.com" in Email Field
And I enter "I like tea" in Subject Field
And I enter "This is a message" in Message Field
When I click Submit Button
Then Success Message will be displayed

@wip
Scenario: Feedback in Example
  Given I am on the Passion Tea Lets Talk Area Page
  When I write a feedback to Lets Talk Area Page
  Then I will able to write the feedback successfully

@wip
Scenario: Passion Tea Lets Talk Area
Given I am in Passion Tea Lets Talk Tea Page
And I enter "<Name>" in Name Field
And I enter "<Email>" in Email Field
And I do not enter "<Subject>" in Subject Field
And I do not enter "<Message>" in Message Field
When I click Submit Button
Then I will see the "<Error Message>"
