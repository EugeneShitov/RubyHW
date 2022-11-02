require_relative 'pet'

class Dog < Pet
  def initialize(name)
    @pet = 'dog'
    super
  end

  # Walk your pet
  def walk
    puts '*guf* Runs down the *guuff* street and barks at people *puFf*'
    super
  end

  # Watch a movie with your pet
  def movie
    puts 'watching a movie *gaff*',
      'worries about the actors'
    super
  end

  # The pet is mischievous while you are not around
  def naughty
    puts 'puff...guff...',
      '...pufff...',
      '*KNOK* broken vase'
    super
  end

  # Scratch your pet
  def scratch
    puts 'gaff uuu ffuf'
    super
  end

  private

  def check
    puts 'Whine in pain *gaff*' if @life <= 2
    puts '*Press "Enter(return)" to see the list of commands*'
  end
end
