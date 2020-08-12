class AddJpyToJpyInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :jpy_inflations, :jpy, null: false, foreign_key: true
  end
end
