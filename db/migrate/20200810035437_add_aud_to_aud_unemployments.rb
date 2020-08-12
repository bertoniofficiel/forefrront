class AddAudToAudUnemployments < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_unemployments, :aud, null: false, foreign_key: true
  end
end
