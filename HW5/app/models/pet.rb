# frozen_string_literal: true

class Pet
  attr_accessor :name
  attr_reader :life

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
  end

  def deadlifts
    @power  += 1
    @energy -= 5
  end

  def play_laser
    @energy -= 1
  end

  def go_sleep
    @hunger += 5
    @energy += 5
  end

  def jump_window
    @life   += 2
    @power  -= 1
    @energy -= 10
  end

  def suicide
    @life = 0
  end
end
