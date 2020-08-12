class AddAudToAudTradebalances < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_tradebalances, :aud, null: false, foreign_key: true
  end
end
