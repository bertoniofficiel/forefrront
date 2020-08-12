class CreateEurInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :eur_interests do |t|
      t.date :releasedate
      t.float :actual
      t.float :forecast
      t.float :previous

      t.timestamps
    end
  end
end
