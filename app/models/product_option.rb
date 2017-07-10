class ProductOption < ApplicationRecord
  belongs_to :product

  validates :product, presence: true
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false, scope: :product_id }
  validates :values, presence: true
end
