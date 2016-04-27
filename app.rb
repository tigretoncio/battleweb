require 'sinatra/base'



class Battle < Sinatra::Base
  #set :port, 8080
  get '/' do
    'Hello Battle!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
