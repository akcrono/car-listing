class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates :manufacturer, presence: true
  validates :mileage, presence: true
  validates :color, presence: true
  validates :year, presence: true,
                   numericality: { greater_than_or_equal_to: 1920 }
end
