Given(/^I am in Passion Tea Lets Talk Tea Page$/) do
  @browser.goto "http://www.practiceselenium.com/let-s-talk-tea.html"
end

Given(/^I enter "([^"]*)" in Name Field$/) do |username|
  @browser.text_field(:name => 'name').set(username)
end

Given(/^I enter "([^"]*)" in Email Field$/) do |id|
@browser.text_field(:name => 'email').set(id)
end

Given(/^I enter "([^"]*)" in Subject Field$/) do |subject|
@browser.text_field(:name => 'subject').set(subject)
end

Given(/^I enter "([^"]*)" in Message Field$/) do |message|
  @browser.textarea(:name => 'message').set(message)
end

When(/^I click Submit Button$/) do
@browser.button(:value => 'Submit').click
end

Then(/^Success Message will be displayed$/) do
  sleep 5
  @browser.text.include?('Thank you sending').should == true
end


Given(/^I am in Passion Tea Menu Page$/) do
  @browser.goto "http://www.practiceselenium.com/menu.html"
end

When(/^I click Checkout Button$/) do
  @browser.span(:class => 'button-content wsb-button-content').click
end

Then(/^Checkout page will be displayed$/) do
  @browser.text.include?('Enter your billing information').should == true
end

Given(/^I click on Our Passion Page$/) do
    @browser.goto "http://www.practiceselenium.com/our-passion.html"
end

Then(/^It allows me to enter the Our Passion Page$/) do
    @browser.text.include?('The Experts').should == true
end

Given(/^I am in Passion Tea Welcome Page$/) do
  @browser.goto "http://www.practiceselenium.com/welcome.html"
end

When(/^I click on See Collection Button$/) do
    @browser.span(:class => 'button-content wsb-button-content').click
end

Then(/^It takes me to Menu Page$/) do
  @browser.text.include?('Menu').should == true
  @browser.text.include?('Green Tea').should == true
  @browser.text.include?('Red Tea').should == true
end

Given(/^I am in Passion Tea  Checkout Page$/) do
  @browser.goto "http://www.practiceselenium.com/check-out.html"
end

Given(/^I enter "([^"]*)" in the checkout email field$/) do |id|
@browser.text_field(:id => 'email').set(id)
end

Given(/^I enter "([^"]*)" in the checkout name Field$/) do |username|
  @browser.text_field(:id => 'name').set(username)

end

Given(/^I enter "([^"]*)" in the checkout Address Field$/) do |address|
  @browser.textarea(:id => 'address').set(address)
end

Given(/^I enter "([^"]*)" in the checkout Card Type Field$/) do |visa|
 @browser.select_list(:id => "card_type").select(visa)
end

Given(/^I enter "([^"]*)" in the checkout Card Number Field$/) do |cardnumber|
  @browser.text_field(:id => 'card_number').set(cardnumber)
end

Given(/^I enter "([^"]*)" in the checkout CardHolder Name Field$/) do |cardholdername|
  @browser.text_field(:id => 'cardholder_name').set(cardholdername)
end

Given(/^I enter "([^"]*)" in the checkout Verification Code Field$/) do |verificationcode|
  @browser.text_field(:id => 'verification_code').set(verificationcode)
end

When(/^I click the PlaceOrder button$/) do
  @browser.button(:text => 'Place Order').click
end

Then(/^It should successfully make the payment$/) do
  @browser.text.include?('Menu').should == true
  @browser.text.include?('Green Tea').should == true
  @browser.text.include?('Red Tea').should == true
end

When(/^I click the Cancel link$/) do
  @browser.link(:href => 'menu.html').click
end

When(/^I click on More button$/) do
  @browser.span(:class => 'editor_sidebarmore').click
end

Given(/^I am on the Passiontea Checkout page$/) do
    @browser.goto "http://www.practiceselenium.com/check-out.html"
end

When(/^I complete the checkout page$/) do
  @browser.text_field(:id => 'email').set('anitha@example.com')
  @browser.text_field(:id => 'name').set('Anitha Is the Best')
  @browser.textarea(:id => 'address').set('690 Sec St Eagan MN')
  @browser.select_list(:id => 'card_type').select('Visa')
  @browser.text_field(:id => 'card_number').set('4111111111111111')
  @browser.text_field(:id => 'cardholder_name').set('Anitha')
  @browser.text_field(:id => 'verification_code').set('000')
  @browser.button(:text => 'Place Order').click
  sleep 5
end

Then(/^the order will be placed$/) do
  @browser.text.include?('Menu').should == true
  @browser.text.include?('Green Tea').should == true
  @browser.text.include?('Red Tea').should == true
end
