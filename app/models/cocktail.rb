class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses # through join table!
  validates :name, presence: true, uniqueness: true
end
