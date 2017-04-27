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
    # $player_1 = Player.new(params[:player_1_name])
    # $player_2 = Player.new(params[:player_1_name])
    # session['player_1_name'] = params['player_1_name']
    # session['player_2_name'] = params['player_2_name']
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    # @player_1_name = session['player_1_name']
    # @player_2_name = session['player_2_name']
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    erb :play
  end

  get '/attack' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack($game.player_2)
    # @player_1_name = session['player_1_name']
    # @player_2_name = session['player_2_name']
    erb :attack
  end

  run! if app_file == $0
end
