class AddJpyToJpyGdps < ActiveRecord::Migration[6.0]
  def change
    add_reference :jpy_gdps, :jpy, null: false, foreign_key: true
  end
end
