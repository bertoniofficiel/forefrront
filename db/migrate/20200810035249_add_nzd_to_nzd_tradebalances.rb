class AddNzdToNzdTradebalances < ActiveRecord::Migration[6.0]
  def change
    add_reference :nzd_tradebalances, :nzd, null: false, foreign_key: true
  end
end
