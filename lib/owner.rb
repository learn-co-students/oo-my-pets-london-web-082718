
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @name = name
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    all.size
  end

  def self.reset_all
    all.clear
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

  def play_with_cats
    pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

  def feed_fish
    pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

  def sell_pets
    all_pets = pets[:fishes] + pets[:cats] + pets[:dogs]
    all_pets.each do |pet|
    pet.mood = "nervous"
  end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
