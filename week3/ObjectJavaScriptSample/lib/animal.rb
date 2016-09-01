class Animal
	def initialize(name,noise)
		@name = name
		@noise = noise
	end

	def make_noise
		puts "#{@name} says: #{@nosie}"
	end
	def shout
		puts @noise.upcase
	end
end