class ChangeDatatypecolumn6 < ActiveRecord::Migration[7.0]
  def change
    change_column_comment(:drugs, :formulation, from:"剤型" , to: "剤型 -- tablet(錠剤): 0, powder(粉): 1, capsule(カプセル): 2, liquid(液剤): 3, nose(点鼻): 4" )
    change_column_comment(:drugs, :division, from: "リスク区分", to:"リスク区分 -- to_guide(要指導医薬品): 0, one_kind(一類医薬品): 1, two_kind(二類医薬品): 2, three_kind(三類医薬品): 3, two_designate(指定二類医薬品): 4" )
  end
end
