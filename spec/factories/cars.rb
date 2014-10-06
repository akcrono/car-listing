FactoryGirl.define do
  factory :car do
    association :manufacturer, factory: :manufacturer
    color "blue"
    year 2014
    mileage 4321
  end
end
