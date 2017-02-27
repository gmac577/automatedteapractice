class PassionCheckout
	include PageObject
	include DataMagic


  page_url "http://www.practiceselenium.com/check-out.html"


  #elements
  text_field(:email, :id => 'email')
  text_field(:name, :id => 'name')
  textarea(:address, :id => 'address')
  select_list(:cardtype, :id => 'card_type')
  text_field(:cardnumber, :id => 'card_number')
  text_field(:cardholdername, :id => 'cardholder_name')
  text_field(:verificationcode, :id => 'verification_code')
  button(:placeorder, :text => 'Place Order')


  def passion_checkout_info(data = {})
		populate_page_with data_for(:checkout_info, data)
		populate_page_with data_for(:randomcheckout_info, data)
    #self.email = 'aelangovan@test.com'
    #self.name = 'Anitha Elangovan'
    #self.address = '1250 Stephenson Highway'
    #self.cardtype = 'Visa'
    #self.cardnumber = '4111111111111111'
    #self.cardholdername = 'Anitha Elangovan'
    #self.verificationcode = '123'
  end

  def passion_checkout_button
  	placeorder
  end
end
