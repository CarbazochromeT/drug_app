class MakerName < ApplicationRecord
  has_many :drugs, dependent: :destroy,foreign_key: :maker_name_id
end
