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

  get '/chitter' do
    @chits = Chit.all
    erb :'chits/chits'
  end

  get '/chitter/new' do
    erb :'chits/new'
  end

  post '/chitter/new' do
    Chit.create(content: params['content'])
    redirect '/chitter'
  end

  run! if app_file == $0
end