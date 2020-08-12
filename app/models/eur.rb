class Eur < ApplicationRecord
	has_many :eurcpis
	has_many :eurpmis
	has_many :eurtradebalances
	has_many :eurunemployments
	has_many :eurinflations
	has_many :eurinterests
	has_many :eurgdps
end
