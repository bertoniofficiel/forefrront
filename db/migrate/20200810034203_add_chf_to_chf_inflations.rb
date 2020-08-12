class AddChfToChfInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :chf_inflations, :chf, null: false, foreign_key: true
  end
end
