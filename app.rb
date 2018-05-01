require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  get '/player_naming_form' do
    erb(:form)
  end


end
