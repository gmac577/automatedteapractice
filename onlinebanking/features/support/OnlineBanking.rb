class Onlinebanking
	include PageObject
	include DataMagic

	page_url "https://onlineweb.azurewebsites.net/"

	#elements
	  text_field(:username, :id => 'username_field')
		text_field(:password, :id => 'password_field')
		button(:signin, :text => 'Sign In')
		button(:close, :text => 'Close')
		h1(:accounts_heading, :text => 'Your Accounts')
		h1(:signin_heading, :text => 'Sign In')
		#h3(:error, :text => 'Error')
		select_list(:institution, :id => 'institution_field')
		paragraph(:invalid, :text =>'Username and/or Password invalid.')

		def online_banking_info(data = {})
			populate_page_with data_for(:banklogin_info, data)
		end

		def online_banking_fails_info(data = {})
			populate_page_with data_for(:bankloginfails_info, data)
			#populate_page_with data_for(:randombank_details, data)
		end

		def banking_signin_button
	  	signin
	  end

		def banking_close_button
	  	close
	  end

		#def bank_error
			#sleep 1
			#error?.should == true
		#end

		def banking_heading
			sleep 2
			accounts_heading?.should == true
		end

		def banking_signin_heading
			#puts signin_heading_element.html
			signin_heading?.should == true
		end

		def banking_institution
			institution
		end

		def bank_error
			sleep 1
			invalid?.should == true
		end
	end
