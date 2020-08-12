class AddGbpToGbpPmis < ActiveRecord::Migration[6.0]
  def change
    add_reference :gbp_pmis, :gbp, null: false, foreign_key: true
  end
end
