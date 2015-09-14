require 'desktop'
require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/Card'
require 'pry'


Desktop::CLI.start %w[set /Users/Giancarlo/Documents/reveal.jpg]

class App < Sinatra::Base

	get '/' do
	    "Hello, cruel world!"
	end

	get '/form' do
	    @all = Card.all 
		erb :form
	end

	post '/form' do
		@card = Card.new
		@card.participant = params[:participant].capitalize
		@card.value = params[:value].capitalize
		@card.suit = params[:suit].capitalize
		@card.save
		redirect '/form'
	end

end