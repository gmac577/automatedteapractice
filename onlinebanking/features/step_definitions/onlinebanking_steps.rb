Given(/^I am on the online banking web login page$/) do
  visit(Onlinebanking)
  #@browser.goto "https://onlineweb.azurewebsites.net/"
end

Given(/^I logged in to the bank website with "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |username, password, institution, logo|
  visit(Onlinebanking)
  @browser.text_field(:id => 'username_field').set(username)
  @browser.text_field(:id => 'password_field').set(password)
  @browser.select_list(:id => 'institution_field').select(institution)
  on(Onlinebanking).banking_signin_button
  sleep 5
  @browser.image(:src => logo).exists?.should == true
end

When(/^I enter "([^"]*)" in username field$/) do |username|
  @browser.text_field(:id => 'username_field').set(username)
end

When(/^I enter "([^"]*)" in password field$/) do |password|
  @browser.text_field(:id => 'password_field').set(password)
end

When(/^I enter "([^"]*)" in institution Field$/) do |institution|
  @browser.select_list(:id => 'institution_field').select(institution)
end

When(/^I click on Sign in button$/) do
  on(Onlinebanking).banking_signin_button
end

Then(/^I enter into the online banking website with the respective institution "([^"]*)"$/) do |logo|
  sleep 5
  @browser.image(:src => logo).exists?.should == true
end

Then(/^I click on Sign out button and checks I took me to the signin page$/) do
  on(Onlinebanking).banking_signout
  sleep 5
  on(Onlinebanking).banking_signin_heading
end

When(/^I enter incorrect credentials$/) do
    @browser.text_field(:id => 'username_field').set('TEST12648')
    @browser.text_field(:id => 'password_field').set('dummy')
    @browser.select_list(:id => 'institution_field').select('Symitar')
end

When(/^I get the Error Notification alert$/) do
  sleep 5
  on(Onlinebanking).bank_error
end

When(/^I click on close button$/) do
  on(Onlinebanking).banking_close_button
end

Then(/^I will be back on Sign in Page$/) do
  on(Onlinebanking).banking_signin_heading
end

Then(/^I must see paybill link and click on the same$/) do
  on(Onlinebankingpaybill).banking_tabs
end

Then(/^I click on Scheduled tab$/) do
  sleep 5
  on(Onlinebankingpaybill).banking_paybill
end

Then(/^I must see Make a new payment button and click on the same$/) do
    on(Onlinebankingpaybill).makepayment_paybill
end

Then(/^I fill the Pay a Bill Form and click on Pay Bill button$/) do
  on(Onlinebankingpaybill).banking_paybill_form
end

When(/^I see more tab and click on the same$/) do
  on(Onlinebankingmore).banking_more
end

Then(/^I must see the dropdown under more tab$/) do
  on(Onlinebankingmore).banking_more_list
end

When(/^I must see transfer link and click on the same$/) do
  sleep 10
  on(Onlinebankingtransfer).transfer_link
end

When(/^I fill the details in the transfer page$/) do
  on(Onlinebankingtransfer).banking_transfers_form
end

When(/^I click on transfer funds button$/) do
  on(Onlinebankingtransfer).transferfundsbtn
end

When(/^I get the confirmation alert to transfer the amount in which I click the transfer button$/) do
  on(Onlinebankingtransfer).transferbtn
end

When(/^I must see success message that the transfer is made and click on OKAY button$/) do
  on(Onlinebankingtransfer).okay_button
end

Then(/^I am taken to transfer page again$/) do
  on(Onlinebankingtransfer).transfer_page
end

When(/^I get the confirmation alert to transfer the amount in which I click the Cancel button$/) do
  on(Onlinebankingtransfer).cancellink
end
