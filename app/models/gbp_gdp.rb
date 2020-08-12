require 'nokogiri'
require 'httparty'
require 'byebug'

class GbpGdp < ApplicationRecord
	belongs_to :gbp

	 def self.new_lookup
		@url="https://www.investing.com/economic-calendar/-#{121}"
		@unparsed_page = HTTParty.get(@url)
		@parsed_page = Nokogiri::HTML(@unparsed_page)
		@mydata=@parsed_page.css('.releaseInfo span')
		
	 end

	def self.actual
		
		@actual= @mydata.children[3].text

	 end

	 def self.previous
		
		@previous = @mydata.children[7].text

	end

	def self.forecast
		
		@forecast = @mydata.children[5].text

	end

	def self.release_date
		
		@release_date=@mydata.children[1].text

	end



# def scraper (listing_code)
# 	url="https://www.investing.com/economic-calendar/-#{listing_code}"
# 	unparsed_page = HTTParty.get(url)
# 	parsed_page = Nokogiri::HTML(unparsed_page)
# 	mydata=parsed_page.css('.releaseInfo span')
# 	release_date=mydata.children[1].text
# 	actual= mydata.children[3].text
# 	forecast = mydata.children[5].text
# 	previous = mydata.children[7].text
# 	# byebug
# end

# scraper(39)

end
