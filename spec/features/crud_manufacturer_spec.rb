require 'rails_helper'
feature "User makes a manufacturer" do
  let(:manufacturer) { FactoryGirl.create(:manufacturer) }

  scenario "User creates a manufacturer" do
    visit '/manufacturers/'
    click_on "Add manufacturer"
    fill_in 'Name', with: manufacturer.name
    fill_in 'Country', with: manufacturer.country
    click_button 'Submit'
    expect(page).to have_content "Manufacturer submitted."

    expect(page).to have_content manufacturer.name
  end

end
