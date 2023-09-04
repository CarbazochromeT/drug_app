require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(製品名	剤型	リスク区分	効能・効果	成分分量	用法・用量	用法関連注意	使用上の注意	製品の特徴	製造販売会社	添付文書URL)
  #%w(氏名 アドレス)はrubyのリテラルの一つで、["氏名","アドレス"]と同値になります。

  csv << csv_column_names
  @users.each do |mic|
    csv_column_values = [
      drug.name
      drug.formulation
      drug.division
      drug.symptom
      drug.ingredient_text
      drug.effect_text
    ]
    csv << csv_column_values
  end
end