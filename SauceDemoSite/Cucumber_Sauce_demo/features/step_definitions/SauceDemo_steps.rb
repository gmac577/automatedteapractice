

Given("the user has navigated to the Sauce Demo Login Page") do
	on(LoginPage).page_url
end

When("the user enters valid credentials") do
 	on(LoginPage).login_to_app
end

Then("the user will be successfully logged in") do
	on(LoginPage).products_page_validation
end

When("the user enters a locked out user credential") do
  on(LoginPage).locked_out_login
end

Then("the locked out message will be displayed") do
  on(LoginPage).locked_out_error
end

When("the user enters an {string} in the username field") do |username|
  @browser.text_field(:id => 'user-name').set(username)
end

When("the user enteres an {string} in the password field") do |password|
  @browser.text_field(:id => 'password').set(password)
end

When("the user clicks on the Login button") do
  on(LoginPage).login_button
end

Then("the {string} will be displayed") do |results|
  @browser.text.should include results
end

	

