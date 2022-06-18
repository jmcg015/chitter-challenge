require "sinatra/base"
require "sinatra/reloader"
require './lib/chit'
require "./lib/database_connection_setup.rb"

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome, you Chitter-er'
  end

  get '/chits' do
    @chits = Chit.all
    erb :'chits/chits'
  end

  run! if app_file == $0
end