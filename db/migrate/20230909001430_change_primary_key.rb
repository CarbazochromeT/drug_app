class ChangePrimaryKey < ActiveRecord::Migration[7.0]
  def change
        execute 'ALTER TABLE your_table_name DROP PRIMARY KEY, ADD PRIMARY KEY (new_primary_key_column);'
  end
end
