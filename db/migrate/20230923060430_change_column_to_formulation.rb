class ChangeColumnToFormulation < ActiveRecord::Migration[7.0]
  def change
    change_column :drugs, :formulation, :string, array: true
  end
end
