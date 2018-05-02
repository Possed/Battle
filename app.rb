require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:form)
  end

  post '/players' do
    @p1 = params[:p1]
    @p2 = params[:p2]
    p params
    erb(:index)
  end





end
