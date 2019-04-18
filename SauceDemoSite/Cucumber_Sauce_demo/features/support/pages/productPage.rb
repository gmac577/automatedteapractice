class ProductsPage
	include PageObject
	include DataMagic
	


	#elements

	select_list(:name, :class => 'product_sort_container')
	link(:shopcart, :href => './cart.html')
	button(:hamburger, :text => 'Open Menu')
	link(:logout, :id => 'logout_sidebar_link')

def selecting_t_shirt
	@browser.button(:text => 'ADD TO CART', :index => 2).click
end

def single_item_assertion
	@browser.div(:id => 'shopping_cart_container').span.text.should include cartnumber	
end

def navigating_to_shop_cart
	@browser.link(:href => './cart.html').click	
end

def adding_multiple_items
	@browser.button(:text => 'ADD TO CART', :index => 0).click
	@browser.button(:text => 'ADD TO CART', :index => 1).click
	@browser.button(:text => 'ADD TO CART', :index => 2).click
end

def shop_cart_validation
	@browser.text.include?('Your Cart').should == true
end

def hamburger_menu_logout
	@browser.button(:text => "Open Menu").click
	logout
end

def assert_logout
	@browser.button(:value => 'LOGIN').present?	
end

end