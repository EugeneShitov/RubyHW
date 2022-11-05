require 'lunox'

class Pet
  attr_accessor :name
  attr_reader :life

  def initialize(name)
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
         "  Name:                     #{name}",
         "  Life:                     #{life}",
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
    Lunox.save(info_html, bypass_html: true)
    @life_unicode_status = '&#10084;'  if life >= 4
    @life_unicode_status = '&#128148;' if life < 4 && life != 0
    @life_unicode_status = '&#9760;'   if life <= 0
    puts 'Your pet has died' if life <= 0
    exit if life <= 0
  end

  def info_html
    <<~HTML
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Pet:                      #{@pet}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Name:                     #{name}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Life:                     #{life}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Mood:                     #{@mood}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Food:                     #{@food}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Water:                    #{@water}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Energy:                   #{@energy}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Wants to go to bed:       #{@sleep}</p>
      <p style="color:#5499C7; text-align: center; font-size: 32px; font-family: Menlo, serif">Wants to go for a walk:   #{@stroll}</p>
      <p style="text-align: center; font-size: 64px">#{@life_unicode_status}</p>
    HTML
  end
end
