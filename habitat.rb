class Habitat
  attr_reader :animals, :plants

  def initialize(entities)
    @animals = []
    animal_kingdom = entities.select { |entity| entity.entity_parent_space == Animals }
    animal_kingdom.each do |animal_spokesman|
      animal_spokesman.amount.times do |index|
        animal = new_organism(:animal, "Animal#{index}", animal_spokesman)
        @animals << animal
      end
    end

    @plants = []
    plant_kingdom = entities.select { |entity| entity.entity_parent_space == Plants }
    plant_kingdom.each do |plant_spokesman|
      plant_spokesman.amount.times do |index|
        plant = new_organism(:plant, "Plant#{index}", plant_spokesman)
        @plants << plant
      end
    end
  end

  def simulate_one_day
    plants.each  { |plant|    plant.grow }
    animals.each { |animal|   animal.speak }
    animals.each { |animal|   animal.eat }
    animals.each { |animal|   animal.sleep }
  end

  def new_organism(type, name, spokesman_of_class)
    case type
    when :animal
      spokesman_of_class.entity_class.new(name)
    when :plant
      spokesman_of_class.entity_class.new(name)
    else
      raise "Unknown organism type: #{type}"
    end
  end
end
