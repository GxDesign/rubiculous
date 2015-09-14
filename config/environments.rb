require_relative '../models/Card'
require_relative '../app'

configure :production, :development do
	db = URI.parse(ENV['./db/cards'] || 'postgres://localhost/development')

	ActiveRecord::Base.establish_connection(
			:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
			:host     => db.host,
			:username => db.user,
			:password => db.password,
			:database => db.path[1..-1],
			:encoding => 'utf8'
	)
end