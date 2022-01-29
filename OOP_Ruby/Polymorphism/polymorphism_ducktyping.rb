"""
Duck Typing is nothing but working on the idea of what an object 
can do rather than what it actually is. Or, what operations could be 
performed on the object rather than the class of the object.

"""

class Hotel

    def enters
        puts "A customer enters"
    end

    def type(customer)
        customer.type
    end

    def room(customer)
        customer.room 
    end 

end

#Creating class with two methods
class Single

    def type
        puts "Room is on the fourth floor"
    end 

    def room
        puts "Per night stay is 5 thousand"
    end 

end

class Couple

    # Same method as in class single
    def type
        puts "Room is on the second floor"
    end 

    def room
        puts "Per night stay is 2 thousand"
    end  

end 

# Creating object
# Performing Polymorphism
hotel = Hotel.new
puts "This visitor is single"
customer = Single.new
hotel.type(customer)
hotel.room(customer)

puts "The visitors are a couple."
customer = Couple.new
hotel.type(customer)
hotel.room(customer)