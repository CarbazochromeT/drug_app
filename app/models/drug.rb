class Drug < ApplicationRecord
  extend Enumerize
  scope :admin_scope, -> { where(published: true) }
  has_many :drug_ingredients, dependent: :destroy
  has_many :ingredients,through: :drug_ingredients
  has_many :drug_symptoms
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

  def admin_label
    name.upcase
  end

  enumerize :formulation, in: { :tablet => 0, :powder => 1, :capsule => 2, :liquid => 3, :nose => 4,
    :troche => 5, :candy => 6, :gargle => 7, :ointment => 8, :suppository => 9, :spray => 10 },  multiple: true
  enumerize :division, in: { to_guide: 0, one_kind: 1, two_kind: 2, three_kind: 3, two_designate: 4 }, scope: true

end
