require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper (listing_code)
	url="https://www.investing.com/economic-calendar/-#{listing_code}"
	unparsed_page = HTTParty.get(url)
	parsed_page = Nokogiri::HTML(unparsed_page)
	mydata=parsed_page.css('.releaseInfo span')
	release_date=mydata.children[1].text
	actual= mydata.children[3].text
	forecast = mydata.children[5].text
	previous = mydata.children[7].text
	byebug
end

scraper(39)
