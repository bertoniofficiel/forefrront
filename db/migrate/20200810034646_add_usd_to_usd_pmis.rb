class AddUsdToUsdPmis < ActiveRecord::Migration[6.0]
  def change
    add_reference :usd_pmis, :usd, null: false, foreign_key: true
  end
end
