class CreateJpies < ActiveRecord::Migration[6.0]
  def change
    create_table :jpies do |t|
      t.integer :grade
      t.integer :cot

      t.timestamps
    end
  end
end
