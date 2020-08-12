class AddUsdToUsdGdps < ActiveRecord::Migration[6.0]
  def change
    add_reference :usd_gdps, :usd, null: false, foreign_key: true
  end
end
