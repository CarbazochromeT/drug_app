class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :drugs, :maker_name_id, :integer
  end
end
