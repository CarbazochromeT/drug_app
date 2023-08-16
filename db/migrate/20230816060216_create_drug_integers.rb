class CreateDrugIntegers < ActiveRecord::Migration[7.0]
  def change
    create_table :drug_ingredients do |t|
      t.references :drug, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.timestamps
    end
    add_index :drug_ingredients, [:drug_id, :ingredient_id], unique: true
  end
end
