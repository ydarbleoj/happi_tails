require './client'
require './shelter'
require './animal'

shelter = Shelter.new('Joel', 'Otis')

animal = Animal.new()

def menu prompt 
  # puts 'clear'
  puts ":: Welcome to Happi Tails Shelter ::"
  
  puts "#{prompt}\n\n" unless prompt.empty?

  puts '1 : Display animals: '
  puts '2 : Display clients: '
  puts '3 : Add animal'
  puts '4 : Add client'
  puts "q : Quit\n\n"
  print '-->'
  gets.chomp 
end 
prompt = ""
choice = menu prompt 
while choice != 'q'
  prompt = ""
  case choice 
  when "3"
    puts "Enter animal info: "
    print "Name: "; name = gets.chomp 
    print "Age: " ; age = gets.chomp
    print "Gender: "; gender = gets.chomp
    print "Species: "; species = gets.chomp
    print "Toys: "; toys = gets.chomp

    shelter.animals << Animal.new(name, age, gender, species, toys)
   
  when "4"
    print "Enter client info: "
    print "Name: "; name = gets.chomp
    print "Age: "; age = gets.chomp
    print "Number of children: "; number_children = gets.chomp 
    print "Number of pets: "; number_pets = gets.chomp
  else 
    prompt += 'I did not understand ... '
  end 
  choice = menu prompt

end 




p 