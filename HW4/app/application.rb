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
    when '/get-name'
      rack_response('name.html.erb')
    when '/create-pet'
      name = request.params['name']
      rack_response_redirect if name.nil? || name.length.zero?
      @pet = Pet.new(name)
      rack_response_redirect('/about')
    when '/about'
      rack_response_redirect if @pet.nil?
      rack_response('about-game.html.erb')
    when '/play'
      rack_response_redirect if @pet.nil?
      rack_response('tamagotchi.html.erb')
    when '/hunting'
      rack_response_redirect if @pet.nil?
      pet.hunting
      rack_response('tamagotchi.html.erb')
    when '/deadlifts'
      rack_response_redirect if @pet.nil?
      pet.deadlifts
      rack_response('tamagotchi.html.erb')
    when '/play-laser'
      rack_response_redirect if @pet.nil?
      pet.play_laser
      rack_response('tamagotchi.html.erb')
    when '/go-sleep'
      rack_response_redirect if @pet.nil?
      pet.go_sleep
      rack_response('tamagotchi.html.erb')
    when '/jump-window'
      rack_response_redirect if @pet.nil?
      pet.jump_window
      rack_response('tamagotchi.html.erb')
    when '/suicide'
      rack_response_redirect if @pet.nil?
      pet.suicide
      rack_response('tamagotchi.html.erb')
    when '/end-game'
      pet.suicide
    else
      rack_response('./errors/error_404.html.erb')
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
