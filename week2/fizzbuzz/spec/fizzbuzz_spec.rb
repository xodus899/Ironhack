require_relative("../lib/fizzbuzzcode.rb")

RSpec.describe Fizzbuzz  do 
	describe "number" do 

	it "returns the number." do
		the_Fizzbuzz = Fizzbuzz.new

		expect( the_Fizzbuzz.number(7)).to eq(7)
		expect( the_Fizzbuzz.number(11)).to eq(11)

	 end
	 it "returns Fizz for multiples of 3" do
	 	the_Fizzbuzz = Fizzbuzz.new
	 expect( the_Fizzbuzz.number(9)).to eq("Fizz")
	 expect( the_Fizzbuzz.number(12)).to eq ("Fizz")

	end

	it "returns Buzz for multiples of 5" do
		the_Fizzbuzz = Fizzbuzz.new
		expect(the_Fizzbuzz.number(10)).to eq("Buzz")
		expect(the_Fizzbuzz.number(25)).to eq("Buzz")
	end
	it "returns FizzBuzz for multiples of 15." do
		the_Fizzbuzz = Fizzbuzz.new
		expect(the_Fizzbuzz.number(15)).to eq("FizzBuzz")
		expect(the_Fizzbuzz.number(30)).to eq("FizzBuzz")
end
end

end

