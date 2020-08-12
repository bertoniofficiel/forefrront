class AddNzdToNzdGdps < ActiveRecord::Migration[6.0]
  def change
    add_reference :nzd_gdps, :nzd, null: false, foreign_key: true
  end
end
