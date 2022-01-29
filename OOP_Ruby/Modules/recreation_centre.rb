module Swimmable
    def Swim
        "Can swim here !"
    end
end

class GreenSpace
    # Getter
    attr_reader :name, :num_trees  
    
    def initialize(name, num_trees)
        @name = name
        @num_trees = num_trees
    end
end

class CityPark < GreenSpace; end 

class Forest < GreenSpace; end 

class RecreationalCenter < CityPark
    attr_reader :philanthropist
    include Swimmable  # module

    def initialize(name, num_trees, philanthropist)
        super(name, num_trees)
        @philanthropist = philanthropist
    end
end 

class Lake < Forest
    include Swimmable
end  

dufferin_park = CityPark.new("Dufferin Park", 5000)
wallace_emerson = RecreationalCenter.new("Wallace Emerson", 2, "Joe Beef")

puts dufferin_park.name
puts dufferin_park.num_trees

puts wallace_emerson.name
puts wallace_emerson.num_trees
puts wallace_emerson.Swim
puts wallace_emerson.philanthropist

