require 'sinatra/base'
require './lib/bookmark'
require 'pg'


class BookmarkManager < Sinatra::Base
  p ENV
  get '/' do
    '<center>
     <h1> <a href="/bookmarks"> Bookmark Manager </a> </h1>
     <img src="https://www.google.co.uk/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwjuzPqIxfriAhUQa1AKHSxBDEsQjRx6BAgBEAU&url=https%3A%2F%2Fearlyshark.com%2Fbookmark%2F&psig=AOvVaw3ZeUaFVPEqGeDsFe9z-j1u&ust=1561205069708275"/>
     </center>'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
