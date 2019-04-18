Feature: Navigating to the Sauce Demo Products page
  This feature file is an example of using Cucumber and Waitr
  to do automation UI testing for the SwagLabs demo site
  I want a feature to validate the SwagLabs demo site Products Page


Background:
  Given the user has successfully navigated to the Sauce Demo Products Page

@wip
 Scenario: Placing one item into the shop cart
   When the user adds the Sauce Labs Bolt T-Shirt to the shop cart 
   Then the shop cart will indicate that "1" item has been placed into the cart.

@wip
Scenario: Removing an added item from the shop cart
    When the user adds the Sauce Labs Bolt T-Shirt to the shop cart 
    And the user decides to remove the item 
    Then the show cart will indicate that no itmes are placed in the cart 


Scenario: Navigating to the Shop Cart Screen
  When the user adds items to the shop cart
  And the user clicks on the shop cart link
  Then the user will be taken to the Your Cart screen

@wip
Scenario: Loging out of the application
  When the user logs out of SwagLabs
  Then the user will be taken to the Login Page