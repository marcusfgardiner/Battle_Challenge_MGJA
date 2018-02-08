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
    # $player_1 = Player.new(params[:name_1])
    # $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hitpoints
    @player_2_hp = $game.player_2.hitpoints
    erb :play
  end

  get '/attack' do
    $game.attack($game.player_2)
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hitpoints
    @player_2_hp = $game.player_2.hitpoints

    erb :attack
  end

  run! if app_file == $0

end
