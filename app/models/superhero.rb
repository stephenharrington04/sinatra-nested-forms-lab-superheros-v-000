class Superhero
  attr_reader :name, :power, :bio
  SUPERHEROS = []

  def initialize(args)
    @name = argumename
    @power = power
    @bio = bio
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

end
