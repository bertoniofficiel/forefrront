class AddAudToAudCpis < ActiveRecord::Migration[6.0]
  def change
    add_reference :aud_cpis, :aud, null: false, foreign_key: true
  end
end
