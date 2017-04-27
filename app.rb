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
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/player_1_turn'
  end

  get '/player_1_turn' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    erb :player1turn
  end

  get '/player_2_turn' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    erb :player2turn
  end

  get '/attackplayer1' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack
    erb :attackplayer1
  end

  get '/attackplayer2' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack
    erb :attackplayer2
  end

  run! if app_file == $0
end
