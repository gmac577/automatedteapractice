class Onlinebanking
	include PageObject
	include DataMagic

	page_url "https://onlineweb.azurewebsites.net/"


	#elements
		button(:signin, :text => 'Sign In')
		link(:signout, :text => 'Sign Out')
		button(:close, :text => 'Close')
		h1(:signin_heading, :text => 'Sign In')
		h3(:error, :text => 'Error:')
		paragraph(:invalid, :id => 'ngdialog1-aria-describedby')


		def banking_signin_button
	  	signin
	  end

		def banking_signout
			signout
		end

		def banking_close_button
	  	close
	  end

		def bank_error
			puts error_element.html
			error?.should == true
			invalid?.should == true
		end

		def banking_signin_heading
			signin_heading?.should == true
		end

	end
