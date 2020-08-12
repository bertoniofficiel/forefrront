class GbpCpi < ApplicationRecord
	belongs_to :gbp

	
	 def self.new_lookup
		@url="https://www.investing.com/economic-calendar/-#{122}"
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
	
end
