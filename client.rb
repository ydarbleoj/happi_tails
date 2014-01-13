require './main'
require './animal'
require './shelter'

class Client 

  attr_accessor :name, :age, :number_children, :number_pets

  # here I initialize instance variables 
  def initialize name, age, number_children, number_pets 
    @name = name 
    @age = age
    @number_children = number_children
    @number_pets = []
    @exist = exist 
  end 

  def adoption_process animal 
    @number_pets << animal 
  end 

  def exists? 
    @exist?
  end 

end 