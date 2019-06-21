feature 'viewing bookmarks' do
  scenario 'bookmarks are visible' do
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    Bookmark.create(url: 'http://ww.yahoo.com', title: 'Yahoo')
    Bookmark.create(url: 'http://www.youtube.com', title: 'Youtube')

    visit ('/bookmarks')

    expect(page).to have_link('Google', href:'http://www.google.com')
    expect(page).to have_link('Yahoo', href:'http://www.yahoo.com')
    expect(page).to have_link('Youtube', href:'http://www.youtube.com')
  end
end
