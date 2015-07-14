require 'bundler/setup'
require 'json'
require 'sinatra'

configure { set :server, :puma }

class App < Sinatra::Application
	
	not_found do
	  status 404
	  erb :not_found, :layout => :error_layout
	end
	
	error do
	  erb :error, :layout => :error_layout
	end

	get '/' do
		erb :index, :layout => :layout
	end
end