class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species, toys)
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