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

#  Make a new file, spec/features/web_helpers.rb
#  require this file inside your spec_helper.rb
#  Define a method inside this file, sign_in_and_play
#  Extract code from your two feature tests that:
# visits the homepage,
# fills in the fields, and
# clicks submit
#  Place this extracted code inside sign_in_and_play
#  Replace these lengthy lines in your feature tests with a call to sign_in_and_play.