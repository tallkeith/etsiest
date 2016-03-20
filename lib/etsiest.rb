require "sinatra/base"
require "json"
require "pry"

require "etsiest/version"
require 'etsy' 

Etsy.api_key = ENV['ETSY_KEY']

module Etsiest
	class App < Sinatra::Application

		get "/search" do 
			query = params["q"]
			response = Etsy::Request.get('/listings/active', :includes => ['Images', 'Shop'], :keywords => query)
			erb :index, locals: {results: response.result}
		end

		run! if app_file == $0
	end
end
