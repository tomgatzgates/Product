class Variant < ApplicationRecord
  belongs_to :product

  validates :product, presence: true
  validates :sku, presence: true, uniqueness: { case_senstive: false }
  validates :is_master, inclusion: { in: [true, false] }
  validates :price, numericality: { greater_than: 0 }, presence: true
end
