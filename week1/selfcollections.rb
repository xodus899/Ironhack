class Home
	attr_accessor(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place","Seville", 5, 47),
	Home.new("Josh's place", "Pittsburg", 3, 41),
	Home.new("Gonzalo's place", "Malaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49)
]

def home_information(input)
input.each do |places|
puts "Name: #{places.name} | Location: #{places.city} | Capacity: #{places.capacity} | Price: #{places.price}"
	end 
end

puts "" #adds a line break

home_information(homes)

puts "" #adds a line break

prices = homes.map do |cost|
	cost.price
	
end

list_price = homes.reduce(0.0) do |sum , cost|
	sum + cost.price
=begin 
This is if you want to do an each statement over reduce.
# list_price = 0.to_f
# prices.each do |cost|
# 	list_price += cost
=end
puts "The average price is:"
puts list_price = list_price / prices.size



