Given(/^I enter into the school site$/) do
  @browser.goto "http://school.demo.moodle.net/"
end

When(/^I click in Log in link$/) do
  #@browser.link(:href =>'http://school.demo.moodle.net/login/index.php').click
  visit(LoginPage)
end

When(/^I enter the "([^"]*)" in the username Field$/) do |username|
  #@browser.text_field(:id=> 'username').set(username)
  on(LoginPage).username = username
end

When(/^I enter the "([^"]*)" in the password Field$/) do |password|
  #@browser.text_field(:id=> 'password').set(password)
  on(LoginPage).password = password
end

When(/^I click on login button$/) do
  #@browser.button(:text => 'Log in').click
  on(LoginPage).login_button
  sleep 5
end

Then(/^"([^"]*)" are displayed$/) do |results|
  @browser.text.include?(results).should == true
end

When(/^I click on Log in as guest button$/) do
  #@browser.button(:text => 'Log in as a guest').click
  on(LoginGuest).loginguest_button
  sleep 5
end

Then(/^guest access page will be displayed$/) do
    #@browser.text.include?('You are currently using guest access').should == true
    on(LoginGuest).login_guest_assert
end
