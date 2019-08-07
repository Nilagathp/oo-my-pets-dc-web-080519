require 'pry'

class Owner
attr_reader :name, :species
@@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
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
