class Vehicle
    def tyreType
        puts "Heavy Car"
    end 
end 

#Using Inheritance
class Car < Vehicle
    def tyreType
        puts "Small Car"
    end 
end 

#Using Inheritance
class Truck < Vehicle
    def tyreType
        puts "Big Car"
    end
end

#Creating Object
vehicle = Vehicle.new
print vehicle.tyreType()

#Creating different object calling same function
vehicle = Car.new
print vehicle.tyreType() 

#Creating different object calling same function
vehicle = Truck.new
print vehicle.tyreType() 
