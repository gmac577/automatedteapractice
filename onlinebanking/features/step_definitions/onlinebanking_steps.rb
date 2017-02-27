Given(/^I am on the online banking web login page$/) do
  visit(Onlinebanking)
end

When(/^I enter 'TEST(\d+)' in username Field$/) do |username|
  on(Onlinebanking).online_banking_info
end

When(/^I enter 'TEST(\d+)' in the password Field$/) do |password|
  on(Onlinebanking).online_banking_info
end

When(/^I click on Sign in button$/) do
  sleep 10
  on(Onlinebanking).banking_signin_button
end

Then(/^I enter into the online banking website$/) do
  #@browser.text.include?('Your Accounts').should == true
  #on(Onlinebanking).banking_assert
end

When(/^I enter incorrect credentials$/) do
  on(Onlinebanking).online_banking_fails_info
end

Then(/^I get the Error Notification alert$/) do
  sleep 5
    @browser.alert.close
end

Then(/^I click on close button$/) do
  on(Onlinebanking).banking_close_button
end
