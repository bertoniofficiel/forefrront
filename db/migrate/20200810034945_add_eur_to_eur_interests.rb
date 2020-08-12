class AddEurToEurInterests < ActiveRecord::Migration[6.0]
  def change
    add_reference :eur_interests, :eur, null: false, foreign_key: true
  end
end
