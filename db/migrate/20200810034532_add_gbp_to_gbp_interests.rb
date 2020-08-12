class AddGbpToGbpInterests < ActiveRecord::Migration[6.0]
  def change
    add_reference :gbp_interests, :gbp, null: false, foreign_key: true
  end
end
