class Mesure < ApplicationRecord
  belongs_to :dessert
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :dessert, uniqueness: { scope: :ingredient }
end
