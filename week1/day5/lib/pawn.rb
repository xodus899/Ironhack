class Pawn

		def initialize (x , y, color)
		@x = x
		@y = y
		@color = color
	end

	def white_pawn(final_x,final_y)
		if (final_x - @x).abs == 1 && (final_y - @y).abs == 0 || (final_x - @x).abs == 2
			"yes"
		else 
			"no"
		end
	end

	def black_pawn(final_x,final_y)
		if (final_x - @x).abs == 1 && (final_y - @y).abs == 0 || (final_x - @x).abs == 2
			"yes"
		else
			"no"
			
		end
	end




end