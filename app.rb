require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/Card'
require_relative './config/environments'

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

