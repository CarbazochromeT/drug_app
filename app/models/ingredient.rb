class Ingredient < ApplicationRecord
  has_many :drug_ingredients, dependent: :destroy, foreign_key: 'ingredient_id'
  has_many :drugs,through: :drug_ingredients

  validates :name, uniqueness: true, presence: true
end
