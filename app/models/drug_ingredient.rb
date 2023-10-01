class DrugIngredient < ApplicationRecord
  belongs_to :drug
  belongs_to :ingredient
  validates :drug_id, presence: true
  validates :ingredient_id, presence: true

  scope :admin_scope, -> { where(published: true) }
end
