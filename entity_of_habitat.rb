class EntityOfHabitat
  attr_reader :amount, :entity_class, :entity_parent_space

  def initialize(amount:, entity_class:)
    @amount = amount
    @entity_class = entity_class
    @entity_parent_space = Kernel.const_get(@entity_class.to_s.split('::')[-2])
  end
end
