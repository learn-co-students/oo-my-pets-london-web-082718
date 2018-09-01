require 'pry'

class Owner
  # code goes here

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = self.name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  #Class methods
  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end


  #Instance Methods

  def say_species
    "I am a #{@species}."
  end

  #Buy pets
  def buy_fish(name)
    entry = Fish.new(name)
    @pets[:fishes] << entry
  end

  def buy_cat(name)
    entry = Cat.new(name)
    @pets[:cats] << entry
  end

  def buy_dog(name)
    entry = Dog.new(name)
    @pets[:dogs] << entry
  end

  #Change Moods
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  # @pets = {fishes: [], cats: [], dogs: []}
  def sell_pets
    @pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
