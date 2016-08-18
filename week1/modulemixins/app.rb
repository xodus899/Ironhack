require_relative ("lib/salary.rb")
require_relative ("lib/caffeine.rb")
require_relative ("lib/programmer.rb")
require_relative ("lib/designer.rb")



dan = Programmer.new
puts "Dangerous Dan: RAWRRRR!"
dan.caffeine_consumer
dan.program 
dan.salaries
puts "Now that were done, its beer O' clock!"

puts ""


steve = Designer.new
puts "Steve: This coffee taste great today!"
steve.caffeine_consumer
steve.design
steve.salaries
puts "It's about time they decide to pay us. :)"




 