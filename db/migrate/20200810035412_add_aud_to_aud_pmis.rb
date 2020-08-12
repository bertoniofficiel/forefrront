class AddAudToAudPmis < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_pmis, :aud, null: false, foreign_key: true
  end
end
