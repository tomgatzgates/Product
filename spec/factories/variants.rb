FactoryGirl.define do
  factory :variant do
    product
    sequence(:sku) { |n| "sku_#{n}"}
    sequence(:is_master) { |n| n.zero? ? true : false }
    price 5
  end
end
