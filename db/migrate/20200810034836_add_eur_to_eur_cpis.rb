class AddEurToEurCpis < ActiveRecord::Migration[6.0]
  def change
    add_reference :eur_cpis, :eur, null: false, foreign_key: true
  end
end
