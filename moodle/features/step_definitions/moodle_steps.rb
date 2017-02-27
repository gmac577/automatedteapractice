Given(/^I am on the Moodle Sandbox login page$/) do
  #@browser.goto "http://demo.moodle.net"
  @browser.goto "http://school.demo.moodle.net/"
  @browser.link(:href => 'http://school.demo.moodle.net/login/index.php').click
  sleep 2
end

Given(/^I enter "([^"]*)" in the Username field$/) do |username|
  @browser.text_field(:id => 'username').set(username)
  sleep 5
end

Given(/^I enter "([^"]*)" in the Password field$/) do |password|
  @browser.text_field(:id => 'password').set(password)
  sleep 5
end

When(/^I click on the Log In button$/) do
  @browser.button(:id => 'loginbtn').click
  sleep 5
end

Then(/^"([^"]*)" will be displayed$/) do |results|
  @browser.text.include?(results).should == true
end


When(/^I sign is as a student$/) do
  @browser.text_field(:id => 'username').set('student')
  @browser.text_field(:id => 'password').set('moodle')
  @browser.button(:id => 'loginbtn').click
  sleep 5
end

Then(/^I will be placed on the Student dashboard page$/) do
  @browser.text.include?('Barbara Gardner').should == true
end
