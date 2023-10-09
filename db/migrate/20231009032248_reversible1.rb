class Reversible1 < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      change_table :drugs do |t|
        dir.up   {  execute 'ALTER TABLE drugs DROP PRIMARY KEY, ADD PRIMARY KEY (id);' }
        dir.down {  execute 'ALTER TABLE your_table_name DROP PRIMARY KEY, ADD PRIMARY KEY (new_primary_key_column);' }
      end
    end
  end
end
