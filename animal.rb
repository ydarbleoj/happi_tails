# what do you want to pass into the client list 
#  an object is a combination of state and methods that use that state 
# Phase 1 
# Can create animals and clients


class Animal
  @@number_of_pets = 0
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize( name, age, gender, species, toys )
    @name = name
    @age = age
    @gender = gender
    @species = species 
    @toys = toys 
  end

end 


class Client

  attr_accessor :name, :age, :number_children, :number_pets

  def initialize(name, age, number_children, number_pets)
    @name = name 
    @age = age
    @number_children = number_children
    @number_pets = number_pets
  end 

end 



  def menu prompt 
    puts 'clear'
    puts ":: Welcome to Happi Tails Shelter ::"
    
    puts "#{prompt}\n\n" unless prompt.empty?

    puts '1 : Add animal'
    puts '2 : Add client'
    puts "q : Quit\n\n"
    print '-->'
    gets.chomp 
  end 
  prompt = ""
  choice = menu prompt 
  while choice != 'q'
    prompt = ""
    case choice 
    when "1"
      puts "Enter animal info: "
      print "Name: " 
        if gets.chomp != '' 
          prompt +=  "I did not understand ..."
        else 
          name = gets.chomp
        end 
      print "Age: " ; age = gets.chomp
      print "Gender: "; gender = gets.chomp
      print "Species: "; species = gets.chomp
      print "Toys: "; toys = gets.chomp 
    when "2"
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







