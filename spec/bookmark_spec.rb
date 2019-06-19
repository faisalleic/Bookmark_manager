require 'bookmark'

describe Bookmark do
  describe '.all' do

    it 'returns all the bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include("http://www.google.co.uk")
    expect(bookmarks).to include("http://www.youtube.com")
    expect(bookmarks).to include("http://www.yahoo.com")
    end 
  end
end
