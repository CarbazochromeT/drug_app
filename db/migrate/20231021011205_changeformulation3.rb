class Changeformulation3 < ActiveRecord::Migration[7.0]
  def change
    change_column :drugs, :formulation,'integer USING CAST(drugs AS integer)'
  end
end
