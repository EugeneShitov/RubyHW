require_relative 'pet'

class Cat < Pet
  attr_reader :life

  def initialize(name)
    @pet  = 'cat'
    @life = 3
    super
  end

  def info
    puts 'Pet information: ',
         "  Pet:                      #{@pet}",
         "  Name:                     #{@name}",
         "  Life:                     #{@life}",
         "  Mood:                     #{@mood}",
         "  Food:                     #{@food}",
         "  Water:                    #{@water}",
         "  Energy:                   #{@energy}",
         "  Wants to go to bed:       #{@sleep}",
         "  Wants to go for a walk:   #{@stroll} \n\n"
    check
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
