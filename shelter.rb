require './main'
require './animal'
require './client'

class Shelter 

  # should be able to display all clients and animals
  attr_accessor :clients, :animals

  def initialize clients, animals 
    @clients = []
    @animals = []
  end 

  # here I am trying to add clients to the shelter 
  def get_clients 
    return @clients.select { |i| i.}
  end 


  def get_animals
    return @animals.select { |i| i.adopted? }
  end 

  def animal_access name 
    animal_name = @animals.select { |i| name == i.name }
    return animal_name.pop
  end 

  def client_access name 
    client_name = @client.select { |i| name == i.name }
    return client_name.pop
  end 

  def adopt_animal animal 
    @animals.delete(animal)
  end 

end 


# Phase One can create animals 
# completed 

# Phase Two clients and animals can be added to shelter 

# Phase Three when creating an animal or client the user is 
# prompted for info 

# Phase Four 

# output and input 