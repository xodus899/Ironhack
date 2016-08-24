
class Calculator

	def initialize(number1,number2)
		@number1 = number1
		@number2 = number2
	end

	def add(number1,number2)
		@number1 + @number2

	end


	def subtract(number1,number2)
		@number1 - @number2

	end

	def multiply(number1,number2)
		@number1 * @number2

	end

	def divide(number1,number2)
		@number1 / @number2.to_f
		#turn one to a float incase a decimal place will be shown.


	end
end

