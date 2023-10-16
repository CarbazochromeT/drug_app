class MakerNameId < ActiveRecord::Migration[7.0]
  def change
    add_reference :drugs, :maker_name, foreign_key: true
  end
end
