class Onlinebankingtransfer
	include PageObject
	include DataMagic

	page_url "https://onlineweb.azurewebsites.net/"

#elements
	link(:transfer, :text=> ' Transfer')
	h1(:transfer_heading, :text=> 'Transfer Money')
	select_list(:fromaccount, :id => 'from-account')
	select_list(:toaccount, :id => 'to-account')
	text_field(:amount, :placeholder => 'Enter Amount')
	button(:transfer_btn, :text => 'Transfer Funds')
	button(:transfer_button, :text => 'Transfer')
	button(:okay, :text => 'Okay')
	link(:cancel, :text => 'Cancel')

	def transfer_link
		transfer
		transfer_heading?.should == true
	end

	def banking_transfers_form(data = {})
		populate_page_with data_for(:banking_transfers_info, data)
	end

	def transferfundsbtn
		transfer_btn
	end

	def transferbtn
		@browser.text.include?('You\'re about to transfer').should == true
		transfer_button
	end

	def okay_button
		@browser.text.include?('Your transfer of').should == true
		okay
	end

	def transfer_page
		transfer_heading?.should == true
	end

	def cancellink
		cancel
	end

end
