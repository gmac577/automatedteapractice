class YourInformationPage
	include PageObject
	include DataMagic


	#elements
	text_field(:firstname, :id => 'first-name')
	text_field(:lastname, :id => 'last-name')
	text_field(:zipcode, :id => 'postal-code')
	button(:continue, :value => 'CONTINUE')
	link(:cancel, :href => './cart.html')


def fill_your_information(data = {})
	populate_page_with data_for(:your_information,data)
	continue	
end

def overview_validation
	@browser.text.include?('Checkout: Overview').should == true
end

end