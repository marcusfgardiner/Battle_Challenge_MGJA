require 'sinatra/base'
# preventing issues with sending secure session information
#set :session_secret, 'super secret'

class Battle < Sinatra::Base

 enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:session_1] = params[:name_1]
    session[:session_2] = params[:name_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:session_1]
    @player_2 = session[:session_2]
    erb :play
  end

  run! if app_file == $0

end
