FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) { |n| "Toyota" }
    country "Japan"
  end
end
