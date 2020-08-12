class AddAudToAudGdps < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_gdps, :aud, null: false, foreign_key: true
  end
end
