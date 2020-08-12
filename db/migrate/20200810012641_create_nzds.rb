class CreateNzds < ActiveRecord::Migration[6.0]
  def change
    create_table :nzds do |t|
      t.integer :grade
      t.integer :cot

      t.timestamps
    end
  end
end
