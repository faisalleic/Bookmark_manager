require 'sinatra/base'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base
  p ENV
  get '/' do
    '<h1> <a href="/bookmarks"> Bookmark Manager </a> </h1>'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
