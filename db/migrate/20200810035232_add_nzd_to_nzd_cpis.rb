class AddNzdToNzdCpis < ActiveRecord::Migration[6.0]
  def change
    add_reference :nzd_cpis, :nzd, null: false, foreign_key: true
  end
end
