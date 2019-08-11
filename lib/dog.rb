class Dog

  attr_accessor :owner

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all << self
    @mood = "nervous"

  end

  def name
    @name
  end


  def mood=(mood)
    @mood = mood
  end

  def mood
    @mood
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end


end
