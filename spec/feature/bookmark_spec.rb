require 'spec_helper'

feature 'view homepage ' do
  scenario 'visit the home page' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Vewing bookmarks' do
  scenario 'user can view bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.youtube.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.yahoo.com');")

    visit '/bookmarks'

    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.youtube.com'
    expect(page).to have_content 'http://www.yahoo.com'
  end
end
