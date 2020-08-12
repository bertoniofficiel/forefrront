class AddUsdToUsdCpis < ActiveRecord::Migration[6.0]
  def change
    add_reference :usd_cpis, :usd, null: false, foreign_key: true
  end
end
