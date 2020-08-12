class AddJpyToJpyPmis < ActiveRecord::Migration[6.0]
  def change
    add_reference :jpy_pmis, :jpy, null: false, foreign_key: true
  end
end
