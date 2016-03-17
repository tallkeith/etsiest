require "sinatra/base"
require "json"
require "pry"

require "etsiest/version"
require 'etsy' 

Etsy.api_key = ENV['ETSY_KEY']

module Etsiest
	class Etsy < Sinatra::Application

		# Etsy::Request.get('/listings/active', :includes => ['Images', 'Shop'], :keywords => 'whiskey')

		get "/search" do 
			query = params["q"]
			erb :index
		end

		run! if app_file == $0
	end
end
