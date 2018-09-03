require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats =>  [], :dogs =>  []}
    @@all << self          #  Test 16 - keeps track of the owners that have been created
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
      # new_fish = Fish.new(name)
      # pets[:fishes] << new_fish
      # OR
      pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    # binding.pry
    end
  end

  def buy_cat(name)
      # new_fish = Fish.new(name)
      # pets[:fishes] << new_fish
      # OR
      pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    # binding.pry
    end
  end

  def buy_dog(name)
      # new_fish = Fish.new(name)
      # pets[:fishes] << new_fish
      # OR
      pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    # binding.pry
    end
  end

  def sell_pets
    pets.each do |species, animals|        # animals is an array of objects
      animals.each do |animal|       # animal is an object - representing 1 animal
        animal.mood = "nervous"
      end
  #    binding.pry
      animals.clear   # Must clear each animal after sold...
      # so the animals array of objects gets clered after each iteration
   end
 end

def list_pets
  # binding.pry
  return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

end



end
