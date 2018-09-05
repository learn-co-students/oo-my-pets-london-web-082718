class Owner
  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {cats: [], dogs: [], fishes: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    count = @@all.count
    p count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    p "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def change_pet_mood(pet_type, mood)
    @pets[pet_type].each do |pet|
      pet.mood = mood
    end
  end

  def walk_dogs
    change_pet_mood(:dogs, "happy")
  end

  def play_with_cats
    change_pet_mood(:cats, "happy")
  end

  def feed_fish
    change_pet_mood(:fishes, "happy")
  end

  def sell_pets
    change_pet_mood(:dogs, "nervous")
    change_pet_mood(:cats, "nervous")
    change_pet_mood(:fishes, "nervous")
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
