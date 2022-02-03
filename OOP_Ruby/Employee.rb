class Employee

    attr_reader :name, :salary

    def name=(name)
        if name ==""
            raise "Name can't be blank!"
        end 
        # Store the name in an instance variable
        @name = name
    end

    def salary=(salary)
        if salary < 0
            raise "Raise an error if the salary is negative."
        end
        @salary = salary
    end 

    def print_pay_stub
        puts "Name: #{@name}"
        pay_for_period =(@salary / 365.0) * 14
        #puts "Pay This Period: $#{pay_for_period}"
        result = format("Pay This Period: $%0.2f", pay_for_period)
        puts result
    end

end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000
amy.print_pay_stub