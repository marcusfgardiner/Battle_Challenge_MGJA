require 'sinatra/base'
# preventing issues with sending secure session information
#set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  run! if app_file == $0

end
