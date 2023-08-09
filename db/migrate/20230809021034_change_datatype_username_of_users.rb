class ChangeDatatypeUsernameOfUsers < ActiveRecord::Migration[7.0]
  def down
    remove_index :users, [:username], unique: true
  end
end
