class AddAudToAudInterests < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_interests, :aud, null: false, foreign_key: true
  end
end
