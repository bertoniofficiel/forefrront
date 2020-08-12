class CreateJpyUnemployments < ActiveRecord::Migration[6.0]
  def change
    create_table :jpy_unemployments do |t|
      t.date :releasedate
      t.float :actual
      t.float :forecast
      t.float :previous

      t.timestamps
    end
  end
end
