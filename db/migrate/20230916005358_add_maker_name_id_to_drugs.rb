class AddMakerNameIdToDrugs < ActiveRecord::Migration[7.0]
  def change
      add_reference :maker_names, :drug, foreign_key: true
  end
end
