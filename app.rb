require 'sinatra/base'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base


  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @p1 = $player1.name
    @p2 = $player2.name
    @p2_hp = $player2.hp
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
    @p2_hp = Game.new.attack($player2)
    erb :attack
  end



end
