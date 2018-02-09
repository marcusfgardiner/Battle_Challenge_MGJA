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
    @game = Game.create(Player.new(params[:name_1]), Player.new(params[:name_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.defending_player)
    if @game.game_over?
      redirect '/game_over'
    else
      erb :attack
    end
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  run! if app_file == $0

end
