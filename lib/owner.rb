require 'pry'

class Owner
#attr_accessor :cat, :dog
attr_reader :name, :species
@@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
    #binding.pry
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    my_cats = self.cats
    my_dogs = self.dogs
    my_pets = my_cats + my_dogs
    my_pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    binding.pry
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  def say_species
   return "I am a #{@species}."
  end
  
  def self.all
    return @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end

#victor = Owner.new("Victor")
