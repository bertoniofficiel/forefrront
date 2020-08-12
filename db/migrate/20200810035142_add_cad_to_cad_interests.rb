class AddCadToCadInterests < ActiveRecord::Migration[6.0]
  def change
    add_reference :cad_interests, :cad, null: false, foreign_key: true
  end
end
