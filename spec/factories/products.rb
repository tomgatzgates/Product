FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    price 5
  end
end
