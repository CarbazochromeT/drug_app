class CreateDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugs do |t|
      t.string :name, null: false, unique:true
      t.string :effect_text
      t.string :usage
      t.string :document_url
      t.integer :formulation
      t.integer :division
      t.boolean :taxation, default: false, null: false
      t.integer :for_days
      t.timestamps
    end
  end
end
