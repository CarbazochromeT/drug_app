class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :likes, dependent: :destroy
  has_many :like_drugs, through: :likes, source: :drug

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, presence: true
  validates :username, presence: true, length: { maximum: 255 }


  def like(drug)
    like_drugs << drug
  end
    #current_user.like_drugに選択したdrugを登録する
    #引数のdrugのidをもつlike_drugのレコードを作成
    #user_idはcurrent_user.idが入っている

  def unlike(drug)
    like_drugs.destroy(drug)
  end

  def like?(drug)
    like_drugs.include?(drug)
  end
end
