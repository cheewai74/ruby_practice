class Dog

    def make_up_name
        # Store a value in an instance variable
        @name = "Sandy"
    end 

    def talk
        # Access the instance variable
        puts "#{@name} says Bark!"
    end 

    def move(destination)
        # @name: access instance variable
        # destination: access local variable
        puts "#{@name} runs to the #{destination}"
    end 

    def make_up_age
        @age = 5
    end 

    def report_age
        puts "#{@name} is #{@age} years old."
    end 

end 

# Create a new instance of a Dog class 
dog = Dog.new

# Calling methods on the dog instance
dog.make_up_name
dog.move("yard")
dog.make_up_age
dog.report_age