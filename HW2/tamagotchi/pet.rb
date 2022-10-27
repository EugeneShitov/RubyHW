class Pet
  attr_accessor :name
  attr_reader :life

  def initialize(name)
    @pet    = ''
    @name   = name
    @mood   = 'awesome'
    @life   = 3
    @food   = 5
    @water  = 5
    @energy = 5
    @stroll = true
    @sleep  = false
  end

  # Information about your pet
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
  end

  # Feed your pet
  def feed
    @food = 5
    puts 'nomnomnom'
    passage_of_time
  end

  # Get your pet drunk
  def drunk
    @water = 5
    puts 'sip sip sip'
    passage_of_time
  end

  # Walk your pet
  def walk
    num     = rand(2...3)
    @energy = num
    @water  = num
    @food   = num
    @sleep  = true
    @life  -= 1
    passage_of_time
  end

  # Taking your pet to the vet
  def go_vet
    @life    = 5
    @energy -= 2
    puts 'Veterinarian:',
      'everything is fine, he is healthy!'
    passage_of_time
  end

  # Put your pet to sleep
  def go_sleep
    @food   = 2
    @water  = 2
    @energy = 5
    @sleep  = false
    puts 'zzz.z...zzz.z.zz.z..z'
    passage_of_time
  end

  # Wash your pet
  def wash
    @mood = 'happy'
    passage_of_time
  end

  # Watch a movie with your pet
  def movie
    @mood  = 'sleepy'
    @sleep = true
    passage_of_time
  end

  # The pet is mischievous while you are not around
  def naughty
    @mood    = 'happy'
    @energy -= 1
    passage_of_time
  end

  # Punish the pet
  def punish
    @mood    = 'bad'
    @energy -= 1
    @water  -= 1
    @food   -= 1
    p '*whines*'
    passage_of_time
  end

  # Play ball with your pet
  def play_with_ball
    @energy -= 1
    @mood    = 'happy'
    passage_of_time
  end

  # Scratch your pet
  def scratch
    @mood   = 'awesome'
    @stroll = true
    passage_of_time
  end

  private

  # Passage of time
  def passage_of_time
    num    = rand(1...3)
    @water = num
    @food  = num
    check
  end
end
