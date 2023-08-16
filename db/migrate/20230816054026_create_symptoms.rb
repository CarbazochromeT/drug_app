class CreateSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :symptoms do |t|
      t.string :name, null: false, unique:true
      t.timestamps
    end
  end
end
