

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

Given("the user has successfully navigated to the Sauce Demo Products Page") do
  on(LoginPage).page_url
  on(LoginPage).login_to_app
end

When("the user adds the Sauce Labs Bolt T-Shirt to the shop cart") do
  on(ProductsPage).selecting_t_shirt
end

Then("the shop cart will indicate that {string} item has been placed into the cart.") do |cartnumber|
  on(ProductsPage).single_item_assertion
 end

And("the user decides to remove the item") do
  @browser.div(:text => 'REMOVE', :index => 2).click #inventory_container > div > div:nth-child(3) > div.pricebar > button
  sleep 5
end

Then("the show cart will indicate that no itmes are placed in the cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the user adds items to the shop cart") do
  on(ProductsPage).adding_multiple_items
end

And("the user clicks on the shop cart link") do
  on(ProductsPage).navigating_to_shop_cart
end

Then("the user will be taken to the Your Cart screen") do
  on(ProductsPage).shop_cart_validation
end

When("the user logs out of SwagLabs") do
  on(ProductsPage).hamburger_menu_logout
end

Then("the user will be taken to the Login Page") do
  on(ProductsPage).assert_logout
end

Given("the user has successfully navigated to the Your Cart page") do
  on(LoginPage).page_url
  on(LoginPage).login_to_app
  on(ProductsPage).adding_multiple_items
  on(ProductsPage).navigating_to_shop_cart
end

When("the user completes the review of their items") do
  on(ProductsPage).shop_cart_validation
  on(YourCartPage).continue_checkout
end

Then("the user will be taken to the Your Information page") do
  on(YourCartPage).your_information_validation
end
	
Given("the user has successfully navigated to the Your Information Page") do
  on(LoginPage).page_url
  on(LoginPage).login_to_app
  on(ProductsPage).adding_multiple_items
  on(ProductsPage).navigating_to_shop_cart
  on(YourCartPage).continue_checkout
end

When("the user completes the Your Information section") do
  on(YourInformationPage).fill_your_information
end

Then("the user will be taken to the Checkout Overview page") do
  on(YourInformationPage).overview_validation
end

