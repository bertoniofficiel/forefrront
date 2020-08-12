class AddCadToCadInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :cad_inflations, :cad, null: false, foreign_key: true
  end
end
