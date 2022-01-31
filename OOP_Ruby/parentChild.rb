class Parent

    def initialize
        puts "Parents class created"
    end

end

class Child < Parent

    def initialize
        super
        puts "Child class created"
    end

end

Parent.new
Child.new
