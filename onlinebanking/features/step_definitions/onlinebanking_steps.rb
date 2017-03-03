Given(/^I am on the online banking web login page$/) do
  visit(Onlinebanking)
end

When(/^I enter user credentials$/) do
  on(Onlinebanking).online_banking_info
end

When(/^I click on Sign in button$/) do
  on(Onlinebanking).banking_signin_button
end

Then(/^I enter into the online banking website$/) do
  on(Onlinebanking).banking_heading
end

When(/^I enter incorrect credentials$/) do
  on(Onlinebanking).online_banking_fails_info
end

When(/^I get the Error Notification alert$/) do
    on(Onlinebanking).bank_error
end

When(/^I click on close button$/) do
  on(Onlinebanking).banking_close_button
end

Then(/^I will be back on Sign in Page$/) do
  on(Onlinebanking).banking_signin_heading
end

When(/^I enter the Institution Field$/) do
  on(Onlinebanking).banking_institution
end
