# ### Part II: Object Relations
#
# * An owner should know about its pets! Instances of the `Owner`
# class should be initialized with an `@pets` variable, set equal to
#   the following hash: `{fishes: [], cats: [], dogs: []}`
# * An owner should be able to buy and sell pets, and therefore alter
# the `@pets` hash. You will therefore need a setter and a getter method
# (`attr_accessor`) for `pets`.
# # * When an owner buys a new pet, the `buy_``cat/dog/fish` method takes in an
#  argument of a *name*. You must take that name and do the following:
# #   * *Make a new instance of the appropriate pet, initializing it with that name*.
# #   * Associate that new pet instance to the owner by adding it to the appropriate
# array-value of the `@pets` hash stored in the `pets` `attr_accessor`.
# # * When an owner plays with a cat or feeds a fish or walks a dog, that pet will
# get happier. Remember that the `pets` method stores all of an owners pets.
# The `@pets` hash stored in that method is full of *instances of the
# `Cat`/`Dog`/`Fish` class*. That means you can call `Cat`/`Dog`/`Fish`
#  instance methods (such as `.mood=`) on those pets.

require 'pry'

class Owner

attr_accessor :pets, :name, :all, :list_pets
attr_reader :species

@@all = []
@@count = 0

def initialize(species = "human")
  @name = name
  @@all << self
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@count += 1
end

# def pets
# # @pets = {fishes: [], cats: [], dogs: []}
# end

def buy_cat(name)
pets[:cats] << Cat.new(name)
end

def buy_dog(name)
pets[:dogs] << Dog.new(name)
end

def buy_fish(name)
pets[:fishes] << Fish.new(name)
end

def walk_dogs
pets[:dogs].each { |dog| dog.mood = "happy" }
end

def play_with_cats
pets[:cats].each { |cat| cat.mood = "happy" }
end

def feed_fish
pets[:fishes].each { |fish| fish.mood = "happy" }
end

def sell_pets
  pets.each {|type, pet|
    pet.map {|x|
    x.mood = "nervous"}
  }
  pets.clear
end

def list_pets
"I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
end

def self.all
  @@all
end

def self.reset_all
  @@all.clear
  @@count = 0
end

def say_species
"I am a #{@species}."
end

def self.count
  @@count
end


end
