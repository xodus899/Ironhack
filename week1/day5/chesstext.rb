require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


##########################################
				#ROOK PIECES#
##########################################

white_rook_left = Rook.new(1,1, "white")
white_rook_right = Rook.new(1,8,"white")


black_rook_left = Rook.new(8,1,"white")
black_rook_right = Rook.new(8,8,"black")





puts "Valid movements"
puts "---------------"
puts""

puts "White rook left"
puts white_rook_left.can_move?(1,5) == "yes"
puts white_rook_left.can_move?(7,1) == "yes"
puts white_rook_left.can_move?(5,1) == "yes"


puts"White rook right"

puts white_rook_right.can_move?(2,8) == "yes"
puts white_rook_right.can_move?(5,8) == "yes"
puts white_rook_right.can_move?(7,8) == "yes"


puts""

puts "Black rook left"

puts black_rook_left.can_move?(8,5) == "yes"
puts black_rook_left.can_move?(8,3) == "yes"
puts black_rook_left.can_move?(3,1) == "yes"

puts""

puts "Black rook right"

puts black_rook_right.can_move?(3,8) == "yes"
puts black_rook_right.can_move?(8,1) == "yes"
puts black_rook_right.can_move?(6,8) == "yes"

puts ""



puts"Invalid Movements "
puts "----------------"
puts ""

puts "Rook false moves"

puts white_rook_left.can_move?(3,4) == "no"
puts white_rook_right.can_move?(4,4) == "no"
puts black_rook_left.can_move?(7,2) == "no"
puts black_rook_right.can_move?(4,4) == "no"

##########################################
				#King PIECE#
##########################################

white_king = King.new(1,5,"white")

black_king = King.new(8,5, "black")

puts "Valid movements"
puts "---------------"
puts""

puts "White king "
puts white_king.can_move?(2,4) == "yes"
puts white_king.can_move?(2,6) == "yes"

puts "Black king "

puts black_king.can_move?(7,4) == "yes"
puts black_king.can_move?(7,5) == "yes"




puts"Invalid Movements"
puts "----------------"
puts ""

puts "White king"
puts white_king.can_move?(3,5) == "no"
puts white_king.can_move?(3,3) == "no"

puts "Black king"

puts black_king.can_move?(6,5) == "no"
puts black_king.can_move?(5,3) == "no"

##########################################
				#Bishop PIECE#
##########################################

white_bishop_left = Bishop.new(1,3,"white")
white_bishop_right = Bishop.new(1,6,"white")

black_bishop_left = Bishop.new(8,3,"black")
black_bishop_right = Bishop.new(8,6,"black")

puts "Valid movements"
puts "---------------"
puts""

puts "White Bishop left"

puts white_bishop_left.can_move?(2,2) == "yes"
puts white_bishop_left.can_move?(2,4) == "yes"
puts white_bishop_left.can_move?(3,1) == "yes"


puts"White Bishop right"

puts white_bishop_right.can_move?(2,7) == "yes"
puts white_bishop_right.can_move?(3,8) == "yes"
puts white_bishop_right.can_move?(2,5) == "yes"


puts""

puts "Black Bishop left"

puts black_bishop_left.can_move?(7,4) == "yes"
puts black_bishop_left.can_move?(6,5) == "yes"
puts black_bishop_left.can_move?(7,2) == "yes"

puts""

puts "Black Bishop right"

puts black_bishop_right.can_move?(7,5) == "yes"
puts black_bishop_right.can_move?(6,4) == "yes"
puts black_bishop_right.can_move?(7,7) == "yes"

puts ""

puts"Invalid Movements "
puts "----------------"
puts ""

puts "Bishop false moves"
puts ""
puts"White Bishop left then right"
puts white_bishop_left.can_move?(6,3) == "no"
puts white_bishop_right.can_move?(1,3) == "no"
puts ""
puts"Black Bishop left then right"
puts black_bishop_left.can_move?(2,5) == "no"
puts black_bishop_right.can_move?(4,4) == "no"
puts""

##########################################
				#Knight PIECE#
##########################################
white_knight_left = Knight.new(1,2,"white")
white_knight_right = Knight.new(1,7,"white")

black_knight_left = Knight.new(8,2,"black")
black_knight_right = Knight.new(8,7,"black")

puts "Valid movements"
puts "---------------"
puts""

puts "White knight left"

puts white_knight_left.can_move?(3,1) == "yes"
puts white_knight_left.can_move?(2,4) == "yes"
puts white_knight_left.can_move?(3,3) == "yes"


puts"White knight right"

puts white_knight_right.can_move?(2,5) == "yes"
puts white_knight_right.can_move?(3,8) == "yes"
puts white_knight_right.can_move?(3,6) == "yes"


puts""

puts "Black knight left"

puts black_knight_left.can_move?(6,1) == "yes"
puts black_knight_left.can_move?(7,4) == "yes"
puts black_knight_left.can_move?(6,3) == "yes"

puts""

puts "Black knight right"

puts black_knight_right.can_move?(6,8) == "yes"
puts black_knight_right.can_move?(7,5) == "yes"
puts black_knight_right.can_move?(6,6) == "yes"

puts ""

puts"Invalid Movements "
puts "----------------"
puts ""

puts "knight false moves"
puts ""
puts"White knight left then right"
puts white_knight_left.can_move?(6,3) == "no"
puts white_knight_right.can_move?(1,3) == "no"
puts ""
puts"Black knight left then right"
puts black_knight_left.can_move?(2,5) == "no"
puts black_knight_right.can_move?(4,4) == "no"
puts""

##########################################
				#Queen PIECE#
##########################################

white_queen = Queen.new(1,4,"white")

black_queen = Queen.new(8,4, "black")

puts "Valid movements"
puts "---------------"
puts""

puts "White queen "
puts white_queen.can_move?(2,4) == "yes"
puts white_queen.can_move?(3,6) == "yes"
puts white_queen.can_move?(7,4) == "yes"

puts "Black queen "

puts black_queen.can_move?(7,4) == "yes"
puts black_queen.can_move?(7,5) == "yes"
puts black_queen.can_move?(1,4) == "yes"




puts"Invalid Movements"
puts "----------------"
puts ""

puts "White queen"
puts white_queen.can_move?(3,5) == "no"
puts white_queen.can_move?(3,3) == "no"

puts "Black queen"

puts black_queen.can_move?(6,5) == "no"
puts black_queen.can_move?(7,2) == "no"
puts""

##########################################
				#Pawn PIECE#
##########################################

pawn1 = Pawn.new(2,1, "white")
pawn2 = Pawn.new(2,2, "white")
pawn3 = Pawn.new(2,3, "white")
pawn4 = Pawn.new(2,4, "white")
pawn5 = Pawn.new(2,5, "white")
pawn6 = Pawn.new(2,6, "white")
pawn7 = Pawn.new(2,7,"white")
pawn8 = Pawn.new(2,8, "white")

pawn9 = Pawn.new(7,1, "black")
pawn10 = Pawn.new(7,2, "black")
pawn11 = Pawn.new(7,3, "black")
pawn12 = Pawn.new(7,4, "black")
pawn13 = Pawn.new(7,5, "black")
pawn14 = Pawn.new(7,6, "black")
pawn15 = Pawn.new(7,7, "black")
pawn16 = Pawn.new(7,8, "black")

puts "Valid movements"
puts "---------------"
puts""

puts"White Pawns(s)"
puts pawn1.white_pawn(3,1) == "yes"
puts pawn2.white_pawn(3,2) == "yes"
puts pawn3.white_pawn(3,3) == "yes"
puts pawn4.white_pawn(3,4) == "yes"
puts pawn5.white_pawn(3,5) == "yes"
puts pawn6.white_pawn(3,6) == "yes"
puts pawn7.white_pawn(3,7) == "yes"
puts pawn8.white_pawn(3,8) == "yes"
puts""
puts "Black Pawn(s)"
puts pawn9.black_pawn(6,1) == "yes"
puts pawn10.black_pawn(6,2) == "yes"
puts pawn11.black_pawn(6,3) == "yes"
puts pawn12.black_pawn(6,4) == "yes"
puts pawn13.black_pawn(6,5) == "yes"
puts pawn14.black_pawn(6,6) == "yes"
puts pawn15.black_pawn(6,7) == "yes"
puts pawn16.black_pawn(6,8) == "yes"

puts"Invalid Movements"
puts "----------------"
puts ""

puts"White Pawns(s)"
puts pawn1.can_move?(6,1) == "no"
puts pawn2.can_move?(6,2) == "no"
puts pawn3.can_move?(6,3) == "no"
puts pawn4.can_move?(6,4) == "no"
puts pawn5.can_move?(6,5) == "no"
puts pawn6.can_move?(6,6) == "no"
puts pawn7.can_move?(6,7) == "no"
puts pawn8.can_move?(6,8) == "no"
puts""
puts "Black Pawn(s)"
puts pawn9.can_move?(5,1) == "no"
puts pawn10.can_move?(5,2) == "no"
puts pawn11.can_move?(5,3) == "no"
puts pawn12.can_move?(5,4) == "no"
puts pawn13.can_move?(5,5) == "no"
puts pawn14.can_move?(5,6) == "no"
puts pawn15.can_move?(5,7) == "no"
puts pawn16.can_move?(5,8) == "no"







