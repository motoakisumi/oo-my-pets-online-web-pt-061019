class Owner

  attr_accessor :cats
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @cats =[]
  end

  def name
    @name.dup.freeze
  end

  def species(specie = "human")
    @species = specie
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all
  end

  def dogs
    Dog.all
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    cats << cat
  end
end
