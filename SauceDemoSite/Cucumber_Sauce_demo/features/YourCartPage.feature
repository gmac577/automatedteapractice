Feature: Continueing the Shoping experinece
  This feature file is an example of using Cucumber and Waitr
  to do automation UI testing for the SwagLabs demo site
  I want a feature to validate the SwagLabs demo site Products Page


Background:
  Given the user has successfully navigated to the Your Cart page

Scenario: Continueing the shoping experience
  When the user completes the review of their items
  Then the user will be taken to the Your Information page


