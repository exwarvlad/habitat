require_relative 'habitat'
require_relative 'entity_of_habitat'
Dir[File.join(__dir__, 'animals', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'plants', '*.rb')].each { |file| require file }

jungle_entities = [EntityOfHabitat.new(entity_class: Animals::Tiger, amount: 2),
                   EntityOfHabitat.new(entity_class: Plants::Tree, amount: 4),
                   EntityOfHabitat.new(entity_class: Animals::Frog, amount: 5)]

pond_entities = [EntityOfHabitat.new(entity_class: Animals::Duck, amount: 2),
                 EntityOfHabitat.new(entity_class: Plants::WaterLily, amount: 4)]


jungle = Habitat.new(jungle_entities)
jungle.simulate_one_day

pond = Habitat.new(pond_entities)
pond.simulate_one_day
