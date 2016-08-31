require_relative("lib/color_counter.rb")


colorarray = ["lilac","teal","green","blue","red","purple","teal"];

puts(colorarray)

the_counting_machine = ColorCounter.new

puts ""

puts the_counting_machine.count_colors("indigo",colorarray) == 0
puts the_counting_machine.count_colors("teal", colorarray) == 2
puts the_counting_machine.count_colors("green", colorarray) == 1

caps_colors = colorarray.map do |the_color|
	the_color.upcase
end

p caps_colors