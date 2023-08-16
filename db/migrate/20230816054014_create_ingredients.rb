class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false, unique:true
      t.integer :drive
      t.integer :tobacco
      t.integer :alcohol
      t.timestamps
    end
  end
end
