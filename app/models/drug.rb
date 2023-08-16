class Drug < ApplicationRecord
  has_many :drug_ingredients,dependent: :destroy
  has_many :ingredients,through: :drug_ingredients
  has_many :drug_symptoms, dependent: :destroy
  has_many :symptoms, through: :drug_symptoms
  belongs_to :maker_name
end
