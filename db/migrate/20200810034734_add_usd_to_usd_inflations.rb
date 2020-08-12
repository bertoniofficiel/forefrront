class AddUsdToUsdInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :usd_inflations, :usd, null: false, foreign_key: true
  end
end
