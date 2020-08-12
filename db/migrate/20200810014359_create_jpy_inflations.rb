class CreateJpyInflations < ActiveRecord::Migration[6.0]
  def change
    create_table :jpy_inflations do |t|
      t.date :releasedate
      t.float :actual
      t.float :forecast
      t.float :previous

      t.timestamps
    end
  end
end
