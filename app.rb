require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "Restricted"


  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end


  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    if @game.current_turn.knocked_out?
      redirect '/game_over'
    else
    erb :play
    end
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post '/switch_turns' do
    $game.switch_turns
    redirect '/play'
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end


  run! if app_file == $0
end
