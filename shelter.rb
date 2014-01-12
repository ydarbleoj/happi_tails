require './main'
require './animal'
require './client'

class Shelter 

  # should be able to display all clients and animals
  attr_accessor :clients, :animals

  def initialize( clients, animals ) 
    @clients = []
    @animals = []
  end 



end 
