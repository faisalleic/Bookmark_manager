require 'spec_helper'

feature 'view homepage ' do
  scenario 'visit the home page' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.google.co.uk'
    expect(page).to have_content 'http://www.youtube.com'
    expect(page).to have_content 'http://www.yahoo.com'
  end
end
