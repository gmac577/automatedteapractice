require 'watir'



Before do
  @browser = Watir::Browser.new :firefox
  @browser.window.maximize

end


After do
  @browser.close
end
