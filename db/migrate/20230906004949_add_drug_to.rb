class AddDrugTo < ActiveRecord::Migration[7.0]
  def change
    add_column :drugs, :formula, :text, comment: "成分分量"
    add_column :drugs, :otc_text, :text, comment: "製品の特徴"
    add_column :drugs, :caution, :text, comment: "使用上の注意"
  end
end
