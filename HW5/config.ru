# frozen_string_literal: true

require './app/application'

use Rack::Reloader, 0

run Tamagotchi::Application.new
