require "sinatra"
require_relative("lib/calculatorclass.rb")

my_calculator = Calculator.new


get "/" do 
	erb :home
end


post "/calculate" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f

	if params[:operation] == "add"
		@result = my_calculator.add(number1,number2)
	elsif params[:operation] == "subtract"
		@result = my_calculator.subtract(number1,number2)
	elsif params[:operation] == "multiply"
		@result = my_calculator.multiply(number1,number2)
	elsif params[:operation] = "divide"
		@result = my_calculator.divide(number1,number2)
end

	erb :result
end

	# result = first + second
	# "#{first} + #{second} = #{result}"

	# # redirect to("/add") redirects back to 
	# the computing screen ..

# end

# post "/calculate_subtract" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = first - second
# 	"#{first} -  #{second} = #{result}"
# end

# post "/calculate_multiply" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = first * second
# 	"#{first} * #{second} = #{result}"

# end

# post "/calculate_divide" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = first / second
# 	"#{first} / #{second} = #{result}"
# end





