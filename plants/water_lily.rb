module Plants
  class WaterLily
    def initialize(name)
      @name = name
    end

    def grow
      puts("The Waterlily #{@name} floats, soaks up the sun and grows.")
    end
  end
end
