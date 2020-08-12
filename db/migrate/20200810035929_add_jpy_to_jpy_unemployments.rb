class AddJpyToJpyUnemployments < ActiveRecord::Migration[6.0]
  def change
    add_reference :jpy_unemployments, :jpy, null: false, foreign_key: true
  end
end
