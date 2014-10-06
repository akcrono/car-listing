require 'rails_helper'
feature "User makes a car" do
  let(:car) { FactoryGirl.create(:car) }
  scenario "User creates a car" do

    FactoryGirl.create(:manufacturer)

    visit '/cars/'
    click_on "Add car"
    fill_in 'Year', with: car.year
    fill_in 'Mileage', with: car.mileage
    fill_in 'Color', with: car.color
    select 'Toyota', from: 'Manufacturer'

    click_button 'Create Car'
    expect(page).to have_content "Car submitted."

    expect(page).to have_content car.id
  end
end
