# frozen_string_literal: true

require 'erb'

# Class for pet
module Tamagotchi
  # Call Pet
  class Application
    def call(_env)
      Rack::Response.new(render('index.html.erb')).finish
    end

    def render(template)
      path = File.expand_path("../views/#{template}", __FILE__)
      ERB.new(File.read(path)).result(binding)
    end
  end
end
