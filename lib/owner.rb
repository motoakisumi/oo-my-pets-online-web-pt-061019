class Owner

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @cats =[]
    @dogs =[]
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
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    @cats << Cat.new(name, self)
    @cats
  end

  def buy_dog(name)
    @dogs << Dog.new(name, self)
    @dogs
  end

  def walk_dogs
    self.dogs.each{|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each{|cat| cat.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each |pet|
      pet.mood = "nervious"
      pet.owner = "nil"
    end
  end
end
