class Gbp < ApplicationRecord
	has_many :gbpcpis
	has_many :gbppmis
	has_many :gbptradebalances
	has_many :gbpunemployments
	has_many :gbpinflations
	has_many :gbpinterests
	has_many :gbpgdps
end
