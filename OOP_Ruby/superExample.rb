class Person
    def greeting
        puts "Hello !"
    end 
end

class Friend1 < Person
    def greeting 
        super
        puts "Glad to see you!"
    end
end

class Friend2 < Person
    def greeting
        # Assign Hello to basic_greeting
        basic_greeting = super
        "#{basic_greeting} Glad to see you!"
    end
end

puts Friend1.new.greeting
puts Friend2.new.greeting