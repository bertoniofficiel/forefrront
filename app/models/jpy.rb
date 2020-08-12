class Jpy < ApplicationRecord
	has_many :jpycpis
	has_many :jpypmis
	has_many :jpytradebalances
	has_many :jpyunemployments
	has_many :jpyinflations
	has_many :jpyinterests
	has_many :jpygdps
end
