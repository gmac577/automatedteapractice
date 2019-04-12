class ProductsPage
	include PageObject
	include DataMagic
	


	#elements

	
	text_field(:username, :id => 'user-name')
	text_field(:password, :id => 'password')
	button(:login, :value => 'LOGIN')

def selecting_t_shirt
	@browser.button(:text => 'ADD TO CART', :index => 2).click
end



end