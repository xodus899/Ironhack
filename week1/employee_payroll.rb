class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      @hours_worked * @hourly_rate * 0.82
    end
end

class SalariedEmployee < Employee
	def initialize(name, email, salary)
		@name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
    	@salary / 52 * 0.82
    end
end

class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, salary_per_hour, hours)
		@name = name
        @email = email
        @salary = salary
        @salary_per_hour = salary_per_hour
        @hours = hours
    end

    def calculate_salary
    	( (@hours - 40) * @salary_per_hour + @salary ) * 0.82 / 52
    end
end

class Payroll
  def initialize(employees)
  	@employees = employees
  end

  def pay_employees(employees)
       # employees.each do |e|
       # 	puts "#{e.name}'s salary is #{e.calculate_salary}"
       # end
  end

  def notify(employee)
  	p employee.email
  	p "To: #{employee.name}"
  	p "You don't have to eat ramen this week."
  	p employee.calculate_salary
  	p "-" * 50
  end

end




josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)


nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 100000)


ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)


chris = HourlyEmployee.new('Chris', 'justcd@mail.broward.edu', 15, 50)


matt = HourlyEmployee.new('Matt', 'mwarren@harding.edu', 15, 45)


employees = [josh, nizar, ted, chris, matt]
payroll = Payroll.new(employees)
payroll.pay_employees(employees)
puts ""
payroll.notify(josh)
payroll.notify(nizar)
payroll.notify(ted)
payroll.notify(chris)
payroll.notify(matt)

