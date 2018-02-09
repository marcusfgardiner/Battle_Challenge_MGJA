require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
# preventing issues with sending secure session information
#set :session_secret, 'super secret'

class Battle < Sinatra::Base

 enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name_1]), Player.new(params[:name_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    erb :attack
  end

  run! if app_file == $0

end
