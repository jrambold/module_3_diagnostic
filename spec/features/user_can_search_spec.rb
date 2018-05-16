require 'rails_helper'

feature "User can search" do
  scenario "from any page using the nav bar" do
    visit "/"
    within(".navbar") do
      fill_in 'q', with: '80203'
      click_on 'Locate'
    end

    expect(current_path).to eq('/search')

    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    expect(page).to have_content("Station", count: 10)

    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
