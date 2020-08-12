class Aud < ApplicationRecord
	has_many :audcpis
	has_many :audpmis
	has_many :audtradebalances
	has_many :audunemployments
	has_many :audinflations
	has_many :audinterests
	has_many :audgdps
end
