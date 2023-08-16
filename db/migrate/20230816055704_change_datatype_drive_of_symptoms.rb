class ChangeDatatypeDriveOfSymptoms < ActiveRecord::Migration[7.0]
  def change
    change_column :ingredients, :drive, :boolean, default: false, null: false
    change_column :ingredients, :tobacco, :boolean, default: false, null: false
    change_column :ingredients, :alcohol, :boolean, default: false, null: false
  end
end
