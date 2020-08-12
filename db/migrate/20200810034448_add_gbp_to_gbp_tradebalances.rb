class AddGbpToGbpTradebalances < ActiveRecord::Migration[6.0]
  def change
    add_reference :gbp_tradebalances, :gbp, null: false, foreign_key: true
  end
end
