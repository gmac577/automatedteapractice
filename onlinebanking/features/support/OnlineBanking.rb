class Onlinebanking
	include PageObject
	include DataMagic

	page_url "https://onlineweb.azurewebsites.net/"

	#elements
	  text_field(:name, :id => 'username_field')
		text_field(:password, :id => 'password_field')
		button(:signin, :id => 'signin_button')
		button(:close, :class => 'btn btn-default btn-lg text-uppercase pull-right')
		#h1(:heading?, :id => 'Your Accounts')
		#image(:image?, :img src =>'/assets/images/logo@2x.png')

		def online_banking_info(data = {})
			populate_page_with data_for(:banklogin_info, data)
		end

		def online_banking_fails_info(data = {})
			populate_page_with data_for(:bankloginfails_info, data)
		end

		def banking_signin_button
	  	signin
	  end

		def banking_close_button
	  	close
	  end

		#def banking_assert
			#@browser.text.include?('Your').should == true
		#end

		#def banking_heading
			#heading
		#end

		#def banking_image
			#image
		#end
	end
