class Person

    def initialize name="Unknown", age=0
        @name = name
        @age = age
    end

    def to_s
        "Name: #{@name}, Age: #{@age}"
    end

end

p1 = Person.new
p2 = Person.new "Unkown", 17
p3 = Person.new "Becky", 19
p4 = Person.new "Robert"

puts p1, p2, p3, p4