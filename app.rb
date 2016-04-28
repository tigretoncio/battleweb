require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect ('/play')
  end

  get '/play' do
    @game = $game
    $game.switch
    erb(:play)
  end

  get '/game_over' do
    @game = $game
    erb(:game_over)
  end

  get '/attack' do
    @game = $game
    $game.attack(@game.opponent)
    if @game.loser_player
      erb(:game_over)
    else
      erb(:attack)
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
