class Dog

    attr_reader :name, :age

    def name=(value)
        if value == ""
            # if value is invalid, execution will halt here
            raise "Name can't be blank!"
        end 
        @name = value
    end 

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end 
        @age = value
    end 

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

annoymous = Dog.new
annoymous.name = ""

joey = Dog.new
joey.age = -1