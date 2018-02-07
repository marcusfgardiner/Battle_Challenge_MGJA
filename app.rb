require 'sinatra'
# preventing issues with sending secure session information
set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    "Hello Battle!"
  end

  run! if app_file == $0

end
