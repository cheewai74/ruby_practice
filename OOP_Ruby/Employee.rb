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

    def print_name
        puts "Name: #{@name}"
    end

    # def initialize
    #     #Set the @name instance variable.
    #     @name = "Anoymous"
    #     #Set the @salary instance variable.
    #     @salary = 0.0
    # end

    def initialize(name="Anoymous", salary=0.0)
        # @name = name
        # @salary = salary

        # Definitely a call to the name= method
        self.name = name
        # Definitely a call to the salary=  method
        self.salary = salary
    end

    def print_pay_stub

        # Call print_name method inherited from super class
        # puts "Name: #{@name}"
        print_name

        pay_for_period =(@salary / 365.0) * 14
        #puts "Pay This Period: $#{pay_for_period}"
        result = format("Pay This Period: $%0.2f", pay_for_period)
        puts result
    end

end

class HourlyEmployee < Employee

    attr_reader :hourly_wage, :hours_per_week

    def initialize(name="Anoynous", hourly_wage=0.0, hours_per_week=0.0)
        self.name = name
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def hourly_wage=(hourly_wage)
        # Code to validate and set @hourly_wage
        if hourly_wage < 0
            raise "Raise an error if the hourly wage is negative."
        end
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        # Code to validate and set @hours_per_week
        if hours_per_week < 0
            raise "Raise an error if the hours per week is negative."
        end
        @hours_per_week = hours_per_week
    end

    def print_pay_stub

        print_name

        pay_for_period = hourly_wage * hours_per_week * 2
        formatted_pay = format("%0.2f", pay_for_period)
        puts "Pay this period: #{formatted_pay}"
    end

end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000
amy.print_pay_stub

Employee.new("Jane Doe", 50000).print_pay_stub
Employee.new("Jane Doe").print_pay_stub
Employee.new.print_pay_stub

hourly_employee = HourlyEmployee.new
hourly_employee.name = "John Smith"
hourly_employee.hourly_wage = 14.97
hourly_employee.hours_per_week = 30
hourly_employee.print_pay_stub