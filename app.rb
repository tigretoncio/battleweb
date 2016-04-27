require 'sinatra/base'



class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect ('/play')
  end

  get '/play' do
    @player1 = session[:player_1_name]
    @player2 = session[:player_2_name]
    erb(:play)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end


 # Use enable to enable the session in Sinatra
 # In the post '/names' route, store the player names in the session
 # Write a get '/play route that renders the play.erb view you already wrote
 # In the get '/play' route, extract the instance variables required by the view from the session
 # Remove the erb :play expression from the post '/names' route, and replace it with a redirect to the '/play' route
 # Ensure your enter_names_spec feature test still passes.