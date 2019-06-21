require 'bookmark'

  describe '.all' do
    it 'returns all the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.youtube.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.yahoo.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.youtube.com')
    expect(bookmarks).to include('http://www.yahoo.com')
    end
  end

    describe '.create' do
      it 'creates a new bookmark' do
        Bookmark.create(url: 'http://www.amazon.com')
      end
    end
