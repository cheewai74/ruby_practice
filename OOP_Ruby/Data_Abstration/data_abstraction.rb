class Data_Abstraction

    public

    def publicMethod
        puts "In Public"

        # Calling private method inside public method
        privateMethod
    end 

    private

    def privateMethod
        puts "In Private"
    end 

end

# Creating object of class Data_Abstraction
obj = Data_Abstraction.new

# Calling the public method of the class Data_Abstraction
puts obj.publicMethod