class AddEurToEurInflations < ActiveRecord::Migration[6.0]
  def change
    add_reference :eur_inflations, :eur, null: false, foreign_key: true
  end
end
