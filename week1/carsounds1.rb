class Car
	def initialize(name,sound)
		@name = name
		@sound= sound
	end
	def car_sounds
		puts "#{@name} has taken off #{@sound}"

	end
end

ferrari = Car.new("Ferrari","vrooooooooom , SCREEEECCCCH!!")
pontiac = Car.new("Pontiac","Baaaa Ba ba ba baaaaaaa!!")

ferrari.car_sounds
puts "" + "and car 2 is not far behind!!"
pontiac.car_sounds
