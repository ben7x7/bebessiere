class Ingredient < ApplicationRecord
  has_many :mesures
  has_many :desserts, through: :mesures

  validates :name, presence: true, uniqueness: true
end
