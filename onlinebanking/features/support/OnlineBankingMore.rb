class Onlinebankingmore
	include PageObject
	include DataMagic

	page_url "https://onlineweb.azurewebsites.net/"

  #elements
  link(:more, :text => ' More')
  link(:statements, :text => ' Statements')
  link(:profile, :text => ' Profile')
  link(:locations, :text => ' Locations')
  link(:messages, :text => ' Messages')
  link(:alerts, :text => ' Alerts')
	link(:privacy, :text => ' Privacy Policy')
	link(:terms, :text => ' Terms & Conditions')
	link(:support, :text=> ' Support')

  def banking_more
    more
  end

  def banking_more_list
    if statements? && profile? && locations? && messages? && alerts? && privacy? && terms? && support?
      print " True \r\n"
    else
      print " Failed \r\n"
    end
  end
end
