class Product < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :price, numericality: { greater_than: 0 }, presence: true
end
