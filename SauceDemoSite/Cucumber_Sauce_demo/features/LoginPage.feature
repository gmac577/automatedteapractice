Feature: Navigating to the Sauce Demo login in page
  This feature file is an example of using Cucumber and Waitr
  to do automation UI testing for the SwagLabas demo site
  I want a feature to validate the SwagLabs demo site login page


Background:
  Given the user has navigated to the Sauce Demo Login Page


 Scenario: Navingating the the login page
 When the user enters valid credentials
 Then the user will be successfully logged in

@wip
 Scenario: Invalid Login - Locked Out User
 When the user enters a locked out user credential
 Then the locked out message will be displayed

@wip
Scenario Outline:
 When the user enters an "<username>" in the username field
 And the user enteres an "<password>" in the password field
 And the user clicks on the Login button
 Then the "<results>" will be displayed

Examples:
| username      | password     | results                                                     |
| standard_user |              | Password is required                                        |
|               | secret_sauce | Username is required                                        |
| @%@$@$@       | @%@$@$@      | Username and password do not match any user in this service |
 