FactoryGirl.define do
  factory :product_option do
    product
    sequence(:name) { |n| "option #{n}"}
    values ['value a']
  end
end
