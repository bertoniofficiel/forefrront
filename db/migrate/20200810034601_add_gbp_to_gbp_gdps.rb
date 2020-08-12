class AddGbpToGbpGdps < ActiveRecord::Migration[6.0]
  def change
    add_reference :gbp_gdps, :gbp, null: false, foreign_key: true
  end
end
