class Onlinebankingpaybill
	include PageObject
	include DataMagic

	page_url "https://onlineweb.azurewebsites.net/"


	#elements
    link(:paybill, :text => 'Pay Bills')
    # link(:transfer, :href => '/app/transfer')
    link(:scheduled, :text => 'Scheduled')
    link(:recent, :text => 'Recently Paid')
    link(:payee, :text => 'Payees')
    h1(:paybill_heading, :text => 'Pay Bills')
    button(:makepayment, :text => 'Make a New Payment')
    select_list(:fromaccount, :id => 'from-account')
    select_list(:topayee, :id => 'to-payee')
    text_field(:amount, :id => 'amount')
    text_field(:date, :class => 'ng-valid ng-not-empty ng-dirty ng-valid-parse ng-touched')
    # text_field(:date, :ng-model => 'bill.paymentDateTime')
    button(:paybillbtn, :text => 'Pay Bill')
    div(:paymentdate, :class => 'datePicker')

		 def banking_paybill_form(data = {})
 			self.fromaccount = 'CLASSIC CHECKING - approved'
 			self.topayee = 'TEST'
 			self.amount ='2'
 			#populate_page_with data_for(:banking_paybill_info, data)
 			#self.date= 'Mar 20, 2017'
 			paybillbtn
 			sleep 5
	 		end

			def banking_tabs
				# if paybill?
				# 	sleep 5
	 		 		paybill
				# 	sleep 3
				# 	paybill_heading?.should == true
				# 	scheduled?.should == true
				# 	recent?.should == true
				# 	payee?.should == true
				# else
	 		# 		print " Failed \r\n"
				#end
	   	end
			def banking_paybill
				scheduled
			end

			def makepayment_paybill
				makepayment
			end
		end
