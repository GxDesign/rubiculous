require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/Card'
require 'pry'


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
		@card.card_value = params[:value].capitalize
		@card.card_suit = params[:suit].capitalize
		@card.save
		redirect '/form'
	end

end