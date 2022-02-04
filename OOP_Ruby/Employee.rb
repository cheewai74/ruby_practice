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
        
        # self.name = name
        super(name)

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

    def turn_into_cashier
        self.hourly_wage  = 12.75
        self.hours_per_week = 25
    end

    def self.security_guard(name)
        # calling a class method  MyClass.new
        HourlyEmployee.new(name, 19.5, 30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end

end

class SalariedEmployee < Employee

    attr_reader :salary

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end

    def initialize(name="Anoymous", salary=0.0)

        # Call the super class initialize method, passing only the name
        super(name)
        # Set the salary ourselves, since it's specific to this class
        self.salary = salary

    end


    def print_pay_stub

        # Have the superclass print the name
        print_name
        # Calculate 2 weeks pay
        pay_for_period = (salary / 365.0) * 14
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

ivan = HourlyEmployee.new("Ivan Stokes")
ivan.turn_into_cashier
ivan.print_pay_stub

angela = HourlyEmployee.security_guard("Angel Mattews")
angela.print_pay_stub
edwin = HourlyEmployee.janitor("Edwin Burgess")
edwin.print_pay_stub
ivan = HourlyEmployee.cashier("Ivan Stokes")
ivan.print_pay_stub

salaried_employee = SalariedEmployee.new("Sam Tong", 50000)
salaried_employee.print_pay_stub