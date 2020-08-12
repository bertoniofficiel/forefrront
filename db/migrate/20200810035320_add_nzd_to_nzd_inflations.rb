class AddNzdToNzdInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :nzd_inflations, :nzd, null: false, foreign_key: true
  end
end
