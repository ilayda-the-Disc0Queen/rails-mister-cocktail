class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient } # unique for a given cocktail/ingredient couple, works either way round
end
