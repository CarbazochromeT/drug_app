class Symptom < ApplicationRecord
  has_many :drug_symptoms, dependent: :destroy, foreign_key: 'symptom_id'
  has_many :drugs, through: :drug_symptoms
  validates :name, uniqueness: true, presence: true
end
