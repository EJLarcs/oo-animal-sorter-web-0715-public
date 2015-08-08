# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about,
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.
require 'pry'
class AnimalSorter
  attr_accessor :array_of_animals

  LAND_ANIMALS = ["aardvark", "cat", "elephant"]
  SEA_ANIMALS = ["marlin", "octopus", "fish"]

  def initialize(array_of_animals)
#animals is an array
  @array_of_animals = array_of_animals
  end

  def land_animal
    @land_animal
  end

  def sea_animal
    @sea_animal
  end

  def to_a
    animal_list = [[], []]
    @array_of_animals.select do |animal|
      if !LAND_ANIMALS.include?(animal)
       animal_list[0] << animal
      elsif LAND_ANIMALS.include?(animal)
        animal_list[1] << animal
      end
    end
    animal_list

  end

end
