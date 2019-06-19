require 'sinatra/base'
require 'sinatra'


class BookmarkManager < Sinatra::Base

  get '/' do
    "Hello World"
  end
end
