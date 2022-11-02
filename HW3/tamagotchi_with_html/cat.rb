require_relative 'pet'

class Cat < Pet
  def initialize(name)
    @pet = 'cat'
    super
  end

  # Walk your pet
  def walk
    puts '*Meoww* Runs down the *meoWww* street'
    super
  end

  # Watch a movie with your pet
  def movie
    puts 'watching a movie *meow*',
      'worries about the actors'
    super
  end

  # The pet is mischievous while you are not around
  def naughty
    puts 'mrr...meow...',
      '...mrrr...',
      '*KNOK* broken vase'
    super
  end

  # Scratch your pet
  def scratch
    puts 'mrrr uuu mrr'
    super
  end

  private

  def check
    puts 'Whine in pain *meow*' if @life <= 2
    puts '*Press "Enter(return)" to see the list of commands*'
  end
end
