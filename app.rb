require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @p1 = session[:name_p1]
    @p2 = session[:name_p2]
    erb(:play)
  end

  post '/names' do
    session[:name_p1] = params[:p1]
    session[:name_p2] = params[:p2]
    redirect '/play'
  end

  get '/first_attack' do
    "Igor attacked Roxana"
  end



end
