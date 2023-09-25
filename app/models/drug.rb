class Drug < ApplicationRecord
  extend Enumerize
  scope :admin_scope, -> { where(published: true) }
  has_many :drug_ingredients,dependent: :destroy
  has_many :ingredients,through: :drug_ingredients
  has_many :drug_symptoms, dependent: :destroy
  has_many :symptoms, through: :drug_symptoms
  belongs_to :maker_name
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for(
    :ingredients,
    reject_if: :all_blank,
    allow_destroy: true
  )

  accepts_nested_attributes_for(
    :symptoms,
    reject_if: :all_blank,
    allow_destroy: true
  )

  enumerize :formulation, in: { tablet: 0, powder: 1, capsule: 2, liquid: 3, nose: 4 }, scope: true
  enumerize :division, in: { to_guide: 0, one_kind: 1, two_kind: 2, three_kind: 3, two_designate: 4 }, scope: true

  def search_by_formulation
    Drug.formulation.find_values(*Drug.formulation.values.map(&:to_sym)).map { |formulation| [formulation.text, formulation.value] }
  end
end
