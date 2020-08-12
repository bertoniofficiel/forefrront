class AddEurToEurUnemployments < ActiveRecord::Migration[6.0]
  def change
    add_reference :eur_unemployments, :eur, null: false, foreign_key: true
  end
end
