require "sinatra/base"
require "json"
require "pry"

require "etsiest/version"
require 'etsy' 

Etsy.api_key = ENV['ETSY_KEY']

module Etsiest
	class Etsy < Sinatra::Application

		get "/search" do 

		end

		run! if app_file == $0
	end
end
