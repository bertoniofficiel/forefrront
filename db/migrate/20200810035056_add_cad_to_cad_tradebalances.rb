class AddCadToCadTradebalances < ActiveRecord::Migration[6.0]
  def change
    add_reference :cad_tradebalances, :cad, null: false, foreign_key: true
  end
end
