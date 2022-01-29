module Swimmable
    def Swim
        "Can swim here!"
    end 
end 

class GreenSpace

    # Create both reader and writer method.
    attr_accessor :name, :num_trees

    def initialize(name, num_tress)

        # Instance variables
        @name = name
        @num_trees = num_tress
    end

end

class CityPark < GreenSpace; end 

class RecreationalCenter < CityPark

    # Create reader method
    attr_reader :philanthropist

    include Swimmable

    # class variables
    @@num_rec_centres = 0

    def initialize(name, num_trees, philanthropist)
        super(name, num_trees)

        # instance variables
        @philanthropist = philanthropist

        @@num_rec_centres += 1
    end 

    def whats_this
        self
    end

    def self.num_rec_centres
        @@num_rec_centres
    end 

end

class Forest < GreenSpace; end 

class Lake < Forest
    include Swimmable
end 

dufferin_park = CityPark.new("Dufferin Park", 2000)
wallace_emerson = RecreationalCenter.new("Wallace Emerson", 2, "Joe Beef")
scadding_court = RecreationalCenter.new("DunBat", 25, "Jim Balsillie")

print  RecreationalCenter.num_rec_centres 
print scadding_court.name 
scadding_court.name = "Scadding Court"
print scadding_court.name 

puts scadding_court.whats_this