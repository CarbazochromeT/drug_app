class Ingredient < ApplicationRecord
  extend Enumerize
  has_many :drug_ingredients, dependent: :destroy, foreign_key: 'ingredient_id'
  has_many :drugs,through: :drug_ingredients

  validates :name, uniqueness: true, presence: true

  enumerize :drive, in: { drive_ok: true, drive_ng: false }
  enumerize :tobacco, in: { tobacco_ok: true, tobacco_ng: false }
  enumerize :alcohol, in: { alcohol_ok: true, alcohol_ng: false }

  def self.search(search_params)
		@drug = Drug.where( 'drive LIKE ?', "%#{search_params[:search_radio]}%" )
  end
end
