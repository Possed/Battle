require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base


  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @p1 = $player1
    @p2 = $player2
    erb(:play)
  end

  post '/names' do
    $player1 = Player.new.name(params[:p1])
    $player2 = Player.new.name(params[:p2])
    redirect '/play'
  end

  get '/first_attack' do
    "Igor attacked Roxana"
  end



end
