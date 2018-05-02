require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  post '/players' do
    p params
    @p1 = param[:p1]
    @p2 = param[:p2]
    erb(:index)
  end
  
  get '/player_naming_form' do
    erb(:form)
  end



end
