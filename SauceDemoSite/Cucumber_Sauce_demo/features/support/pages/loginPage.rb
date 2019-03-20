class LoginPage
	include PageObject
	include DataMagic


	#page_url "https://www.saucedemo.com"


	#elements

	text_field(:username, :id => 'user-name')
	text_field(:password, :id => 'password')
	button(:login, :value => 'LOGIN')


def page_url
	@browser.goto "https://www.saucedemo.com"
end
	
def login_to_app(data = {})
	populate_page_with data_for(:valid_user_info, data)
	login
end

def login_button
	login
end

def products_page_validation
	@browser.text.include?('Products').should == true
end

def locked_out_login(data = {})
	populate_page_with data_for(:locked_out_user, data)
	login
end

def locked_out_error
	@browser.text.include?('Sorry, this user has been locked out.').should == true
end

end

