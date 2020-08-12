class AddUsdToUsdTradebalances < ActiveRecord::Migration[6.0]
  def change
    add_reference :usd_tradebalances, :usd, null: false, foreign_key: true
  end
end
