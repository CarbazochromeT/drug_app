class Like < ApplicationRecord
  belongs_to :user
  belongs_to :drug

  validates_uniqueness_of :user_id, scope: :drug_id
end
