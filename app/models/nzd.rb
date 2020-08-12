class Nzd < ApplicationRecord
	has_many :nzdcpis
	has_many :nzdpmis
	has_many :nzdtradebalances
	has_many :nzdunemployments
	has_many :nzdinflations
	has_many :nzdinterests
	has_many :nzdgdps
end
