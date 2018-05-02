require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base


  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @p1 = $player1.name
    @p2 = $player2.name
    erb(:play)
  end

  post '/names' do
    $player1 = Player.new(params[:p1])
    $player2 = Player.new(params[:p2])
    redirect '/play'
  end

  get '/first_attack' do
    @p1 = $player1.name
    @p2 = $player2.name
    erb :attack
  end



end
