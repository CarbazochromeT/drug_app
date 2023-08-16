class MakerName < ApplicationRecord
  has_many :drug, dependent: :destroy
end
