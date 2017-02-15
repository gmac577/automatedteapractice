class LoginPage
	include PageObject
	include DataMagic


	page_url "http://school.demo.moodle.net/login/index.php"


	#elements
	text_field(:username, :id => 'username')
	text_field(:password, :id => 'password')
	button(:login, :text => 'Log in')
	link(:forgot, :href => 'http://school.demo.moodle.net/login/forgot_password.php')


def login_to_system
	self.username = username
	self.password = password
	login
end

def login_button
	login
end

end
