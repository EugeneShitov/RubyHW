# frozen_string_literal: true

require 'erb'
require_relative './models/pet'

# Application for tamagotchi
class Application
  attr_accessor :pet
  attr_reader   :request,
                :path

  def call(env)
    @request = Rack::Request.new(env)
    @path    = request.path

    response.finish
  end

  def response
    case path
    when '/'
      rack_response('sign-in.html.erb')
    when '/about'
      return rack_response_redirect('about-game.html.erb')
    end
  end

  def rack_response(html_name)
    Rack::Response.new(render(html_name))
  end

  def render(html_name)
    html_path = File.expand_path("../views/#{html_name}", __FILE__)
    ERB.new(File.read(html_path)).result(binding)
  end

  def rack_response_redirect(new_path = '/')
    Rack::Response.new do |response|
      response.redirect(new_path)
    end
  end
end
