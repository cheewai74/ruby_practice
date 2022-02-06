class SmallOven
    attr_accessor :contents

    def turn_on
        puts "Turning oven on."
        @state ="on"
    end

    def turn_off
        puts "Turning oven off."
        @state ="off"
    end

    def bake

        unless @state == "on"
            # Raise an error if we attempt to bake while the oven is off.
            raise "You need to turn the oven on first!"
        end

        if @contents == nil
            # Raise an error if we attempt to bake while the oven is empty
            raise "There's nothing in the oven"
        end
        # This line won't be reached if an error is raised!
        "golden-brown #{contents}"

    end

end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
    begin
        oven.contents = item
        puts "Serving #{oven.bake}."
    # rescue
    #     puts "Error: There's nothing in the oven!"

    # Store the exception in a variable
    # rescue => my_exception
    #     # Print the exception message.
    #     puts my_exception.message

    rescue => error
        puts "Error: #{error.message}"
    end
end 

# oven = SmallOven.new
# oven.turn_on
# oven.contents = nil
# puts "Serving #{oven.bake}."

# oven.turn_off
# oven.contents = 'turkey'
# puts "Serving #{oven.bake}."

