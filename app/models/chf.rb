class Chf < ApplicationRecord
	has_many :chfcpis
	has_many :chfpmis
	has_many :chftradebalances
	has_many :chfunemployments
	has_many :chfinflations
	has_many :chfinterests
	has_many :chfgdps
end
