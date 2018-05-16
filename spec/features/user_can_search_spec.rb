require 'rails_helper'

feature "User can search" do
  scenario "from any page using the nav bar" do
    visit "/"
    within(".navbar") do
      fill_in 'q', with: '80203'
      click_on 'Locate'
    end

    expect(current_path).to eq('/search')



    expect(page).to have_content("Name", count: 10)
    expect(page).to have_content("Address", count: 10)
    expect(page).to have_content("Fuel Types", count: 10)
    expect(page).to have_content("Distance", count: 10)
    expect(page).to have_content("Access Times", count: 10)

    # And the stations should be limited to Electric and Propane
    
    # stations within 6 miles sorted by distance
  end
end
