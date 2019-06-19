require 'sinatra/base'
require 'sinatra'


class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end
  
  get '/bookmarks' do
    @bookmarks = [
      'http://www.google.co.uk',
      'http://www.youtube.com',
      'http://www.yahoo.com'
    ]
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
