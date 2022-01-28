class GreenSpace
    attr_reader :name, :num_trees

    def initialize(name, num_trees)
        @name = name
        @num_trees = num_trees
    end
end

class CityPark < GreenSpace; end

class Forest < GreenSpace; end

high_park = CityPark.new("Hign Park", 5000)
durham_forest = Forest.new("Durham Forest", 125000)
dufferin_park = CityPark.new("Dufferin Park", 2000)

puts high_park.name
puts high_park.num_trees
puts durham_forest.name
puts durham_forest.num_trees
puts dufferin_park.name
puts dufferin_park.num_trees