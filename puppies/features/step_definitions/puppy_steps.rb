Given(/^I am in Puppy adoption agency Page$/) do
  @browser.goto "http://puppies.herokuapp.com/"
end

Given(/^I can see the list of puppies available to adopt$/) do
  @browser.text.include?('Puppy List').should == true
end

When(/^I click on View Details$/) do
  @browser.button(:value => 'View Details').click
end

When(/^I click on Adopt Me!$/) do
    @browser.button(:value => 'Adopt Me!').click
end

When(/^It select the additional products if needed$/) do
  @browser.checkbox(:id => 'collar').set
  @browser.checkbox(:id => 'toy').set
  @browser.checkbox(:id => 'carrier').clear
  @browser.checkbox(:id => 'vet').clear
end

When(/^I click on Complete the Adoption button$/) do
  @browser.button(:value => 'Complete the Adoption').click
end

When(/^I enter the payment Details$/) do
  @browser.text_field(:id => 'order_name').set('Anitha')
  @browser.textarea(:id => 'order_address').set('690 Sec St Eagan MN')
  @browser.text_field(:id => 'order_email').set('anitha@example.com')
  @browser.select_list(:id => 'order_pay_type').select('Check')
end

When(/^I click on Place Order$/) do
    @browser.button(:value => 'Place Order').click
end

Then(/^I get the Thank you message$/) do
  sleep 1
  @browser.text.include?('Thank you for').should == true
end

When(/^I select the additional products if needed$/) do
  @browser.checkbox(:id => 'collar').clear
  @browser.checkbox(:id => 'toy').set
  @browser.checkbox(:id => 'carrier').clear
  @browser.checkbox(:id => 'vet').set
end

When(/^I select the additional products "([^"]*)" if needed$/) do |arg1|
  if arg1.include? "collar"
    @browser.checkbox(:id => 'collar').set
  else
    @browser.checkbox(:id => 'collar').clear
  end
  if arg1.include? "toy"
    @browser.checkbox(:id => 'toy').set
  else
    @browser.checkbox(:id => 'toy').clear
  end
  if arg1.include? "carrier"
    @browser.checkbox(:id => 'carrier').set
  else
    @browser.checkbox(:id => 'carrier').clear
  end
  if arg1.include? "vet"
    @browser.checkbox(:id => 'vet').set
  else
    @browser.checkbox(:id => 'vet').clear
  end
end

When(/^I do not enter the payment Details$/) do
  @browser.text_field(:id => 'order_name').set('')
  @browser.textarea(:id => 'order_address').set('')
  @browser.text_field(:id => 'order_email').set('anitha@test.com')
  @browser.select_list(:id => 'order_pay_type').select('Check')
end

Then(/^I get the error message$/) do
  @browser.text.include?('Name can\'t be').should == true
  @browser.text.include?('Address can\'t be').should == true
end

Then(/^I wait for (\d+) seconds and close the site$/) do |arg1|
  sleep 5
end

When(/^I click on View Details to adopt (\d+) puppies$/) do |arg1|
  @browser.button(:value => 'View Details', :index => 3).click
end

When(/^I click on next link to see the list of puppies to adopt$/) do
  @browser.link(:href => '/agency/index?page=2').click
end

When(/^I click on View Details to adopt a puppy$/) do
  @browser.button(:value => 'View Details', :index => 0).click
end

When(/^I click on (\d+) to see the list of puppies to adopt$/) do |arg1|
  @browser.link(:href => '/agency/index?page=3').click
end

When(/^I click on Adopt Another Puppy button$/) do
@browser.button(:value => 'Adopt Another Puppy').click
end

When(/^I click on Learn link$/) do
  @browser.link(:href => 'http://www...').click
end

When(/^I click on Animal Shelters link$/) do
  @browser.link(:href => 'http://www...').click
end

When(/^I click on Classifieds link$/) do
  @browser.link(:href => 'http://www...').click
end

When(/^I click on Message Board link$/) do
  @browser.link(:href => 'http://www...').click
end

When(/^I click on Pet News link$/) do
  @browser.link(:href => 'http://www...').click
end

Then(/^I get  error message$/) do
  @browser.title == 'This site can\'t'
end

When(/^I click on Return to List link$/) do
@browser.link(:href => '/').click
end

When(/^I click on previous link to see the list of puppies to adopt$/) do
  @browser.link(:class => 'previous_page').click
end

When(/^I click on next View Details to adopt a puppy$/) do
  @browser.button(:value => 'View Details', :index => 2).click
end

When(/^I click View Details "([^"]*)" to adopt a puppy$/) do |arg1|
  @browser.button(:value => 'View Details', :index => arg1.to_i).click
end

When(/^I enter "([^"]*)" in Name Field$/) do |username|
  @browser.text_field(:id => 'order_name').set(username)
end

When(/^I enter "([^"]*)" in Address Field$/) do |address|
  @browser.textarea(:id => 'order_address').set(address)
end

When(/^I enter "([^"]*)" in Email Field$/) do |email|
  @browser.text_field(:id => 'order_email').set(email)
end

When(/^I enter "([^"]*)" in Pay type Field$/) do |paytype|
  @browser.select_list(:id => 'order_pay_type').select(paytype)
end

When(/^I click on next page "([^"]*)" to see more puppies available to adopt$/) do |n|
  n.to_i.times do
    @browser.link(:class => 'next_page').click
  end
end

When(/^I click on previos page "([^"]*)" to see more puppies avaialbe to adopt$/) do |index|
  index.to_i.times do
    @browser.link(:class => 'previous_page').click
  end
end
