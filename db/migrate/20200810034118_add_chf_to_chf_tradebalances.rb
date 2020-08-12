class AddChfToChfTradebalances < ActiveRecord::Migration[6.0]
  def change
    add_reference :chf_tradebalances, :chf, null: false, foreign_key: true
  end
end
