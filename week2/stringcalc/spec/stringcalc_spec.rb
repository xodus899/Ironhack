require_relative("../lib/calculator.rb")

RSpec.describe Stringcalculator do
	#"starts with it"
	describe "add method" do
	it "returns the addition of two numbers of a string" do
		#setup for variable set to the class...
		the_calculator = Stringcalculator.new

		expect( the_calculator.add("7,7") ).to eq(14)

		expect( the_calculator.add("8,4")).to eq (12)

	end
  	it "returns the value of a single number" do
  		the_calculator = Stringcalculator.new

  		expect(the_calculator.add("6")).to eq(6)

  		expect(the_calculator.add("3")).to eq(3)
  	end
  	it "returns the value of an empty string" do
  		the_calculator = Stringcalculator.new

  		expect(the_calculator.add("")).to eq(0)
  	end
  	it "returns the value of false" do
  		the_calculator.Stringcalculator.new

  		expect(the_calculator.add).to eq(0)
  	end
  end	


end