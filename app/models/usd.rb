class Usd < ApplicationRecord
	has_many :usdcpis
	has_many :usdpmis
	has_many :usdtradebalances
	has_many :usdunemployments
	has_many :usdinflations
	has_many :usdinterests
	has_many :usdgdps
end
