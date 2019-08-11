class Dog

  attr_accessor :cats

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = Owner.new(owner)
    @@all << self
    @cats =[]
  end

  def name
    @name
  end

  def owner
    @owner.name
  end

  def owner=(owner)
    @owner = Owner.new(owner)
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

  def buy_cat(name)
    cat = Cat.new(name)
    cats << cat
  end
end
