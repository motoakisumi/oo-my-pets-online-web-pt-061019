class Dog

  attr_accessor :owner

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all << self

  end

  def name
    @name
  end


  def mood=(mood)
    @mood = mood
  end

  def mood
    if @mood == nil
      "nervous"
    else
      @mood
    end
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end


end
