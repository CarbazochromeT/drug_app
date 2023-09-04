class ChangeDatatypecolumn5 < ActiveRecord::Migration[7.0]
  def change
    change_column_comment(:drugs, :name, from: nil, to: "商品名")
    change_column_comment(:drugs, :effect_text, from: nil, to:" 効能効果")
    change_column_comment(:drugs, :usage, from: nil, to: "用法用量")
    change_column_comment(:drugs, :document_url, from: nil, to: "添付文書URL")
    change_column_comment(:drugs, :formulation, from: nil, to: "剤型")
    change_column_comment(:drugs, :division, from: nil, to: "リスク区分")
    change_column_comment(:drugs, :taxation, from: nil, to: "セルフメディケーション税制")
    change_column_comment(:drugs, :for_days,  from: nil, to: "何日ぶん" )
    change_column_comment(:drugs, :maker_name_id, from: nil, to: "製薬企業id")
  end
end
