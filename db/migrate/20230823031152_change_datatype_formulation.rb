class ChangeDatatypeFormulation < ActiveRecord::Migration[7.0]
  def change
    change_column :Drugs, :formulation, :integer, array: true, default: []
  end
end
