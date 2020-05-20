class Dessert < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :technique, presence: true
end
