require 'sinatra/base'
require_relative 'lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_list = BookmarkList.all
    erb :bookmarks
  end

  run! if app_file == $0
end
