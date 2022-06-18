require "sinatra/base"
require "sinatra/reloader"

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome, you Chitter-er'
  end

  get '/chits' do
    @chits = ["Look ma, I'm chitting", 
      "Listen here, you little chit...",
      "Chitty, chitty, bang, bang"
    ]
    erb :'chits/chits'
  end

  run! if app_file == $0
end