class ChangeDrugs < ActiveRecord::Migration[7.0]
  def change
    change_column :drugs, :formulation, :string
    change_column :drugs, :division, :string
    change_column :drugs, :taxation, :string
  end
end
