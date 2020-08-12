class CreateGbpTradebalances < ActiveRecord::Migration[6.0]
  def change
    create_table :gbp_tradebalances do |t|
      t.date :releasedate
      t.float :actual
      t.float :forecast
      t.float :previous

      t.timestamps
    end
  end
end
