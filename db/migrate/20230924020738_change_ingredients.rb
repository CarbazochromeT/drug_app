class ChangeIngredients < ActiveRecord::Migration[7.0]
  def change
    change_column :ingredients, :tobacco, :string
    change_column :ingredients, :alcohol, :string
    change_column :ingredients, :drive, :string
  end
end
