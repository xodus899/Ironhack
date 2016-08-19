class King
	def initialize (x , y , color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x,final_y)
		how_far_traveled = (final_x - @x)

		if how_far_traveled.between?(-1,1)
			"yes"
		
		else how_far_traveled  
			"no"
		end
	end
end













