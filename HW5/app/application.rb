# frozen_string_literal: true

require 'erb'

# Class for pet
module Tamagotchi
  # Call Pet
  class Application
    def call(env)
      request = Rack::Request.new(env)
      case request.path
      when '/' then Rack::Response.new(render('sign-in.html.erb')).finish
      when '/about' then Rack::Response.new(render('about-game.html.erb')).finish
      when '/play' then Rack::Response.new(render('tamagotchi.html.erb')).finish
      else Rack::Response.new(render('errors/error_404.html.erb')).finish
      end
    end

    def render(template)
      path = File.expand_path("../views/#{template}", __FILE__)
      ERB.new(File.read(path)).result(binding)
    end
  end
end
