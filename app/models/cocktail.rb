class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  has_attachment :photo
end
