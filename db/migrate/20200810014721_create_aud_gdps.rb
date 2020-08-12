class CreateAudGdps < ActiveRecord::Migration[6.0]
  def change
    create_table :aud_gdps do |t|
      t.date :releasedate
      t.float :actual
      t.float :forecast
      t.float :previous

      t.timestamps
    end
  end
end
