# frozen_string_literal: true

require_relative '../application'

class Pet
  attr_accessor :name
  attr_reader :life, :power, :hunger, :energy

  def initialize(name)
    @name   = name
    @life   = 9
    @power  = 1
    @hunger = 10
    @energy = 10
  end

  # Go hunting
  def hunting
    @life   -= 1
    @power  += 1
    @hunger -= 5
    @energy -= 5
    check
  end

  def deadlifts
    @power  += 1
    @energy -= 2
    check
  end

  def play_laser
    @energy -= 1
    check
  end

  def go_sleep
    @hunger += 4
    @energy += 4
    check
  end

  def jump_window
    @life   += 2
    @power  -= 1
    @energy -= 6
    check
  end

  def suicide
    @life = 0
  end

  private
    def check
      @life  -= 1 if @energy.negative?
      @life  -= 1 if @hunger.negative?
      @life  -= 1 if @hunger > 10
      @hunger = 0 if @hunger > 10
      @hunger = 10 if @hunger.negative?
      @energy = 10 if @energy.negative?
      rack_response('end-game.html.erb') if @power == 20
    end
end
