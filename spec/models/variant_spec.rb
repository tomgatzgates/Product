require 'rails_helper'

RSpec.describe Variant, type: :model do
  it { should validate_presence_of(:product) }
  it { should validate_presence_of(:sku) }
  it do
    FactoryGirl.create(:variant)
    should validate_uniqueness_of(:sku)
  end
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price).is_greater_than(0) }
  it { should belong_to(:product) }
end
