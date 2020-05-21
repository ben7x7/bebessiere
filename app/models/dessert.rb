class Dessert < ApplicationRecord
  has_many :ingredients, through: :mesures
  has_many :mesures, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :technique, presence: true
end
