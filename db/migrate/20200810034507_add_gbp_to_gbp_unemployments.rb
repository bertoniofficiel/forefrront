class AddGbpToGbpUnemployments < ActiveRecord::Migration[6.0]
  def change
    add_reference :gbp_unemployments, :gbp, null: false, foreign_key: true
  end
end
