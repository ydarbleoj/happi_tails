require './client'
require './shelter'
require './main'
require 'pry'


class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize name, age, gender, species, toys 
    @name = name
    @age = age
    @gender = gender
    @species = species 
    @toys = toys
  end

  def adoption
    adopted.nil?
  end 


end 









