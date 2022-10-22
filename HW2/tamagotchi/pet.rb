class Pet
  attr_reader :life

  def initialize(name = 'Azov')
    @pet    = 'dog'
    @name   = name
    @mood   = 'awesome'
    @life   = 5
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
    p 'nomnomnom'

    passage_of_time
  end

  # Get your pet drunk
  def drunk
    @water = 5
    p 'sip sip sip'

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
    p '*guf* Runs down the *guuff* street and barks at people *puFf*'

    passage_of_time
  end

  # Taking your pet to the vet
  def go_vet
    @life    = 5
    @energy -= 2
    p 'Veterinarian:',
      'everything is fine, he is healthy!'

    passage_of_time
  end

  # Put your pet to sleep
  def go_sleep
    @food   = 2
    @water  = 2
    @energy = 5
    @sleep  = false
    p 'zzz.z...zzz.z.zz.z..z'

    passage_of_time
  end

  # Wash your pet
  def wash
    @mood = 'happy'
    p '*Swimming in foam and bubbles*'

    passage_of_time
  end

  # Watch a movie with your pet
  def movie
    @mood  = 'sleepy'
    @sleep = true
    p 'watching a movie *gaff*',
      'worries about the actors'

    passage_of_time
  end

  # The pet is mischievous while you are not around
  def naughty
    @mood    = 'happy'
    @energy -= 1
    p 'puff...guff...',
      '...pufff...',
      '*KNOK* broken vase'

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
    p 'the ball flies all over the house'

    passage_of_time
  end

  # Scratch your pet
  def scratch
    @mood   = 'awesome'
    @stroll = true
    p 'gaff uuu ffuf'

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

  def check
    p 'Whine in pain *gaff*' if @life <= 2
  end
end

puts 'Please enter the name for your dog',
     '* His default name is Azov *'
name = gets.chomp.capitalize
pet  = Pet.new(name)

while pet.life != 0
  puts 'Select an action: ',
       '  -  -  Information about your pet',
       '  1  -  Feed your pet',
       '  2  -  Get your pet drunk',
       '  3  -  Walk your pet',
       '  4  -  Taking your pet to the vet',
       '  5  -  Put your pet to sleep',
       '  6  -  Wash your pet',
       '  7  -  Watch a movie with your pet',
       '  8  -  The pet is mischievous while you are not around',
       '  9  -  Punish the pet',
       '  0  -  Play ball with your pet',
       "  /  -  Scratch your pet \n\n",
       "  Q  -  Close game \n\n".upcase

  command = gets.chomp.upcase

  until command == ''
    case command
    when '-'
      pet.info
    when '1'
      pet.feed
    when '2'
      pet.drunk
    when '3'
      pet.walk
    when '4'
      pet.go_vet
    when '5'
      pet.go_sleep
    when '6'
      pet.wash
    when '7'
      pet.movie
    when '8'
      pet.naughty
    when '9'
      pet.punish
    when '0'
      pet.play_with_ball
    when '/'
      pet.scratch
    when 'Q'
      exit
    else
      puts 'Select 0 - 9, -, /, Q!'
    end
    command = gets.chomp.upcase
  end
end
