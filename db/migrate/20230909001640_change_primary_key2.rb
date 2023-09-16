class ChangePrimaryKey2 < ActiveRecord::Migration[7.0]
  def change
    execute 'ALTER TABLE drugs DROP PRIMARY KEY, ADD PRIMARY KEY (id);'
  end
end
