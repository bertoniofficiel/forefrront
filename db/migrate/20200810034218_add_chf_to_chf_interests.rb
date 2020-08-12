class AddChfToChfInterests < ActiveRecord::Migration[6.0]
  def change
    add_reference :chf_interests, :chf, null: false, foreign_key: true
  end
end
