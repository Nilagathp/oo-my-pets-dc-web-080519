require 'pry'
class Cat
attr_accessor :owner
attr_reader :name
@@all = []
  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all<<self
  end

  def mood
    return @mood
  end

  def mood=(new_mood)
    @mood = new_mood
  end

  def self.all
    return @@all
  end
end