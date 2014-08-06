require 'rails_helper'

feature 'As a user, I can add a new blog' do
  scenario do
    visit '/'
    click_on 'Add New Blog'
    fill_in 'Name', with: "My Blog"
    click_on 'Create'

    expect(page).to have_content "My Blog"

  end
end
