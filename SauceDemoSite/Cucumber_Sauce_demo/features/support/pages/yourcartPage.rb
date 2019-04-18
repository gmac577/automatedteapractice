class YourCartPage
	include PageObject
	include DataMagic


	#elements
	link(:contshoping, :href => './inventory.html')
	link(:checkout, :href => './checkout-step-one.html')
	button(:removeitem, :text => 'REMOVE')

def continue_checkout
	checkout
end

def your_information_validation
	@browser.text.include?('Checkout: Your Information').should == true
end

end