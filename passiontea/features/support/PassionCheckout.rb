class PassionCheckout
	include PageObject
	include DataMagic


  page_url "http://www.practiceselenium.com/check-out.html"


  #elements
  text_field(:email, :id => 'email')
  text_field(:name, :id => 'username')
  textarea(:address, :id => 'address')
  select_list(:cardtype, :id => 'card_type')
  text_field(:cardnumber, :id => 'card_number')
  text_field(:cardholdername, :id => 'cardholder_name')
  text_field(:verificationcode, :id => 'verification_code')
  button(:placeorder, :text => 'Place Order')


  def PassionCheckout
    self.email = email
    self.name = username
    self.address = address
    self.cardtype = card_type
    self.cardnumber = card_number
    self.cardholdername = cardholder_name
    self.verificationcode = verification_code
  end

  def Passion_Checkout_button
  	Place Order
  end
end
