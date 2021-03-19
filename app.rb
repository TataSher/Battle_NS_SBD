require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
	enable :sessions
	set :sessions, true
	set :session_secret, 'Snake'

	get '/' do
		'Testing infrastructure working!'
		erb :index
	end

	post '/names' do
		$game = Game.new(params[:player_1], params[:player_2])
		redirect to('/play')
	end

	get '/play' do
		erb :play
	end

  post '/attack' do
    $game.attack($game.previous_player)
    if $game.gameover?
      redirect '/gameover'
    else
      redirect '/attack'
    end
  end

	get '/attack' do
	  erb :attack
	end

  get '/gameover' do
    erb :gameover
  end
end
