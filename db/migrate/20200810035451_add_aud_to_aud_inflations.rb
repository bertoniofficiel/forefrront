class AddAudToAudInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_inflations, :aud, null: false, foreign_key: true
  end
end
