class DrugSymptom < ApplicationRecord
  belongs_to :drug
  belongs_to :symptom
  validates :drug_id, presence: true
  validates :symptom_id, presence: true
  scope :admin_scope, -> { where(published: true) }
end
