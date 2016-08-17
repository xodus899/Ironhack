class Car
	def initialize(name,sound)
		@name = name
		@sound= sound
		@city_array = []
		end

	def car_sounds
		puts "#{@name} has taken off #{@sound}"
	end

	def city_push(city_name)
		@city_array.push(city_name)
	end

	def cities_traveled
		@city_array
	end


		

end

ferrari = Car.new("Ferrari","vrooooooooom , SCREEEECCCCH!!")
ferrari.car_sounds

puts "" + "and car 2 is not far behind!!"

pontiac = Car.new("Pontiac","Baaaa Ba ba ba baaaaaaa!!")
pontiac.car_sounds
puts ""

pontiac.city_push("Miami")
pontiac.city_push("Bozeman")
ferrari.city_push("Raleigh")
ferrari.city_push("Hollywood")


puts "These cars have made it to:"
puts "Pontiac"
p pontiac.cities_traveled
puts "Ferrari"
p ferrari.cities_traveled