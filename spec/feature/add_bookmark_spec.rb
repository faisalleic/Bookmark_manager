require 'spec_helper'
# As a user
# So I can store bookmark data for later retrieval
# I want to add a bookmark to Bookmark Manager

feature 'Adding a new bookmark' do
  scenario 'user can add new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.bbc.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.bbc.com')
  end
end
