class CreateEurs < ActiveRecord::Migration[6.0]
  def change
    create_table :eurs do |t|
      t.integer :grade
      t.integer :cot

      t.timestamps
    end
  end
end
