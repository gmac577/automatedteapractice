class LoginGuest
	include PageObject
	include DataMagic


  #page_url "http://school.demo.moodle.net/login/index.php"


  #elements
  button(:login, :text => 'Log in as a guest')


  def loginguest_button
  	login
  end

	def login_guest_assert
		@browser.text.include?('guest access').should == true
	end

end
