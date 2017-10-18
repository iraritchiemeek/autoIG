require 'capybara'

class InstagramLike < ActiveRecord::Base

	Capybara.register_driver :selenium do |app|
		Selenium::WebDriver::Chrome.driver_path = "/Users/iraritchiemeek/Downloads/chromedriver"
	    Capybara::Selenium::Driver.new(app, :browser => :chrome)
	end
	Capybara.configure do |config|
		config.default_driver = :selenium
	    config.wait_on_first_by_default = true
	    config.default_max_wait_time = 5
	end
    @page = Capybara.current_session

    def self.scroll_to(path)
		@page.driver.evaluate_script "document.evaluate('" + path + "', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView({block: 'center', behavior: 'instant'})"
		# @page.driver.evaluate_script "$('" + selector + "')[0].scrollIntoView({block: 'center', behavior: 'smooth'})"
    end

	def self.like_photos
		url = "https://www.instagram.com"		
		@page.visit url
		@page.all('img').each do |image|
			# puts image.path
			self.scroll_to(image.path)
		end
	end

end
