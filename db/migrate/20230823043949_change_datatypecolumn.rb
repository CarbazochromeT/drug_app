class ChangeDatatypecolumn < ActiveRecord::Migration[7.0]
  def change
    change_column :drugs, :formulation, :integer, array: true, default: []
  end
end
