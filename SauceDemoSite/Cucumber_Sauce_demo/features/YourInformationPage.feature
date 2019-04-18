Feature: Continuing the Shoping experinece
  This feature file is an example of using Cucumber and Waitr
  to do automation UI testing for the SwagLabs demo site
  I want a feature to validate the SwagLabs demo site Products Page


Background:
  Given the user has successfully navigated to the Your Information Page

Scenario: Completing the Your Information page
  When the user completes the Your Information section
  Then the user will be taken to the Checkout Overview page