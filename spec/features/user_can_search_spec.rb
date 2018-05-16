require 'rails_helper'

feature "User can search" do
  scenario "from any page using the nav bar" do
    visit "/"
    # within(".navbar") do
    #   fill_in 'q[form-control]', with: '80109'
    #   click_on 'Locate'
    # end
    #
    # expect(current_path).to eq('/search')
  end
end
