require 'sinatra/base'
require_relative 'lib/player'
# preventing issues with sending secure session information
#set :session_secret, 'super secret'

class Battle < Sinatra::Base

 enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hitpoints
    @player_2_hp = $player_2.hitpoints
    erb :play
  end

  get '/attack' do
    $player_1.attack($player_2)
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hitpoints
    @player_2_hp = $player_2.hitpoints

    erb :attack
  end

  run! if app_file == $0

end
