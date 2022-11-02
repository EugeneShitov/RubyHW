require_relative 'pet'
require_relative 'dog'
require_relative 'cat'
require 'lunox'

puts 'Please, enter you`r pet`s name?'
name = gets.chomp.capitalize
puts 'Choose cat or dog, please'
type = gets.chomp.capitalize
case type
when 'Dog'
  pet = Dog.new(name)
when 'Cat'
  pet = Cat.new(name)
else
  puts 'Don`t know this pet'
end
puts "Hi i'm your #{type.downcase}. My name is #{pet.name}. And I love u :*"

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
       '  B  -  Open in Browser',
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
    when 'B'
      system('open ./index.html')
    else
      puts 'Select 0 - 9, -, /, Q!'
    end
    command = gets.chomp.upcase
  end
end
