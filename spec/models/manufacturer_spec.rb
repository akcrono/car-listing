require 'rails_helper'

describe Manufacturer do

  let(:manufacturer) { FactoryGirl.create(:manufacturer) }
  subject { manufacturer }

  it { should be_valid }

  describe "when name is not present" do
    before { manufacturer.name = nil }
    it { should_not be_valid }
  end

  describe "when country is not present" do
    before { manufacturer.country = nil }
    it { should_not be_valid }
  end
end
