require './main'
require './animal'
require './shelter'

class Client 

  attr_accessor :name, :age, :number_children, :number_pets

  def initialize(name, age, number_children, number_pets)
    @name = name 
    @age = age
    @number_children = []
    @number_pets = []
  end 

end 