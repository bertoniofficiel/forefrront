class AddGbpToGbpInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :gbp_inflations, :gbp, null: false, foreign_key: true
  end
end
