class Product < ApplicationRecord
  has_many :variants, dependent: :destroy
  has_many :product_options, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates :price, numericality: { greater_than: 0 }, presence: true
end
