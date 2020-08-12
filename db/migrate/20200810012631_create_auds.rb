class CreateAuds < ActiveRecord::Migration[6.0]
  def change
    create_table :auds do |t|
      t.integer :grade
      t.integer :cot

      t.timestamps
    end
  end
end
