require './client'
require './shelter'
require './animal'
require 'pry'

shelter = Shelter.new('Joel', 'Otis')



def menu information 
  puts 'clear'
  puts ":: Welcome to Happi Tails Shelter ::"
  
  puts "#{information}\n\n" unless information.empty?

  puts '1 : Add an animal: '
  puts '2 : Add a client: '
  puts '3 : Display all animals available for adoption: '
  puts '4 : Display all clients who work with Happi Tails: '
  puts '5 : Initiate client animal adoption: '
  puts '6 : Initiate client putting up animal for adoption: '
  puts "q : Quit\n\n"
  print '-->'
  gets.chomp 
end

information = "" # sets information to an empty string 
choice = menu information 

while choice != 'q' || choice != 'Q' # run through the list unless asked to [q]uit
  information = ""
  case choice 
  when "1"
    information = "Adding an animal:"
    puts "Please enter the following Animal info: "
    print "Name: "; name = gets.chomp 
    print "Age: " ; age = gets.chomp
    print "Gender: "; gender = gets.chomp
    print "Species: "; species = gets.chomp
    print "Toys: "; toys = gets.chomp
    
    shelter.animals << Animal.new( name, age, gender, species, toys )
    information = "#{shelter.animals.last.name} has been added"

  when "2"
    information = "Adding a clinet: "
    puts "Please enter the following Client info: "
    print "Name: "; name = gets.chomp
    print "Age: "; age = gets.chomp
    print "Number of children: "; number_children = gets.chomp 
    print "Number of pets: "; number_pets = gets.chomp
    
    shelter.clients << Client.new( name, age, number_children, number_pets )      

  when "3"
    # print out availible animals 
    available_animals = shelter.get_animals
    information = "List of available animals: \n"
    available_animals.each { |i| information += i.name + " " }
    binding.pry

  when "4"
    display_clients = shelter.get_clients
    information += "List of Clients: \n\n"
    display_clients.each do |client|
      information += display_clients + " "
    end 

  when "5"
    # hopefully this is where we adopt an animal 
    puts "Enter client name: "
    shelter.get_clients.each { |i| puts "#{i.name}"}
    # store client name 
    queue_client + gets.chomp
    # looks through shelter list of animals to add to client 
    puts "Name of animal you wish to adopt: "
    shelter.get_animals.each { |i| puts "#{i.name}" }
    requested_animal = gets.chomp 
    requested_animal = shelter.animal_access(requested_animal)
    queue_client = shelter.get_clients(queue_client)
    queue_client.adoption_process(requested_animal)
    shelter.adopt_animal(requested_animal)

  end 
  choice = menu information

end 














