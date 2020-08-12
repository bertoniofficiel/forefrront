class Cad < ApplicationRecord
	has_many :cadcpis
	has_many :cadpmis
	has_many :cadtradebalances
	has_many :cadunemployments
	has_many :cadinflations
	has_many :cadinterests
	has_many :cadgdps
end
