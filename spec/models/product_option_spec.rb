require 'rails_helper'

RSpec.describe ProductOption, type: :model do
  it { should validate_presence_of(:name) }
  it do
    FactoryGirl.create(:product_option)
    should validate_uniqueness_of(:name)
      .case_insensitive
      .scoped_to(:product_id)
  end
  it { should validate_presence_of(:values) }
  it { should belong_to(:product) }
end
