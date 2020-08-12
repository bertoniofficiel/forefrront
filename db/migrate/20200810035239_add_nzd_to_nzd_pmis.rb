class AddNzdToNzdPmis < ActiveRecord::Migration[6.0]
  def change
    add_reference :nzd_pmis, :nzd, null: false, foreign_key: true
  end
end
