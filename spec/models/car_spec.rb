require 'rails_helper'

describe Car do

  let(:car) { FactoryGirl.create(:car) }
  subject { car }

  it { should be_valid }

  describe "when manufacturer is not present" do
    before { car.manufacturer_id = nil }
    it { should_not be_valid }
  end

  describe "when mileage is not present" do
    before { car.mileage = nil }
    it { should_not be_valid }
  end

  describe "when color is not present" do
    before { car.color = nil }
    it { should_not be_valid }
  end

  describe "when year is not present" do
    before { car.year = nil }
    it { should_not be_valid }
  end

  describe "when year is too low" do
    before { car.year = 1919 }
    it { should_not be_valid }
  end
end
