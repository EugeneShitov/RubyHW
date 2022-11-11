require './app/application.rb'

use Rack::Reloader, 0

run Pet.new
