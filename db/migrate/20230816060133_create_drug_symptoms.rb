class CreateDrugSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :drug_symptoms do |t|
      t.references :drug, foreign_key: true
      t.references :symptom, foreign_key: true
      t.timestamps
    end
    add_index :drug_symptoms, [:drug_id, :symptom_id], unique: true
  end
end
