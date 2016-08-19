
class Room
	
	def pre_room
	
		puts  "\t\tWelcome to the abyss. \n\t Can you find your way out?!?!?"
		puts ""
		puts "-" * 64
		puts "Are you ready to play \n |Y|,|N|?"
		puts ""
		
	user_direction = gets.chomp.upcase
		if user_direction == "Y"
			first_room
		else
			puts "You have been turned into a squirrel."
			puts""
			puts "GOODBYE"
		end
	end
	puts""
	
	
	def first_room
		
		puts " You have landed in a dark room. A loud noise comes from the south. There is a door in that direction."
		puts ""
		puts "Which way do you choose?"
		puts ""
		puts "|N|,|S|,|W|,|E|"
		puts""
		puts ">"

		

		user_direction = gets.chomp.upcase
			if user_direction == "S"
				 second_room()
			else 
				puts "You have run into a wall, Bang!"
				puts "Try again."
				puts ""
				first_room()
			end

	end

	def second_room
		
		puts " You have chosen to follow your curiosity and  have found nothing but an empty room.\n You see a diminutive glow towards something that looks like a closet facing the north."
		puts ""
		puts "Which way do you go?"
		puts ""
		puts " |N|,|S|,|W|,|E|"
		puts ""
		puts ">"


		user_direction = gets.chomp.upcase
			if user_direction == "N"
				third_room()
			else
				puts "You hear a CRACK! , and fall to the floor."
				puts "Try again."
				puts ""
				second_room()
			end
		
	end

	def third_room
		
		puts " You have somehow warped into an asylum and found a wizard."
		puts ""
		puts "Which way do you go?"
		puts ""
		puts " |N|,|S|,|W|,|E|"
		puts ""
		puts ">"
		

			user_direction = gets.chomp.upcase
				if user_direction == "W"
					fourth_room()
				else
					puts "You have run into the wizard, and he smacks you on the head with a staff.\n\n THUD!!"
					puts ""
					puts "Try again."
					puts ""
					third_room()
				end
		end
			
		def fourth_room
		
		puts " You land in a smoldering room and cannot see. You smell something burning and begin to panic."
		puts ""
		puts "Which way do you go?"
		puts ""
		puts " |N|,|S|,|W|,|E|"
		puts ""
		puts ">"
		

			user_direction = gets.chomp.upcase
				if user_direction == "E"
					fifth_room()
				else
					puts "The floor below you caves in"
					puts ""
					puts "Try again."
					puts ""
					fourth_room()
				end
		end

		def fifth_room
	
			puts " You have escaped the fire and have found yourself facing a pack of snarling lions. Dont panic."
			puts ""
			puts " |N|,|S|,|W|,|E|"
			puts ""
			puts ">"
			puts ""
			user_direction = gets.chomp.upcase
 
			
				
  				if user_direction == "N"
					puts "You have managed to get away  suffering some bites from the lions." 
					puts "Congratulations!!"

				else
					
					puts "You are scratched by the paw. AHHH!"
					puts ""
					puts "Try again."
					puts ""
					fifth_room()

				
				end

			end

	end

	player = Room.new
	player.pre_room








# \n\n REACT QUICKLY YOU HAVE THREE SECONDS TO RESPOND BEFORE THEY HAVE YOU FOR LUNCH!.

	# t = Time.new(0)
	# 			countdown_time_in_seconds = 7 # change this value
	# 			countdown_time_in_seconds.downto(0) do |seconds|
 # 				puts (t + seconds).strftime('%H:%M:%S')
 # 				sleep 1
 # 				if seconds == 0 
 # 					puts ""
 # 				puts "\t\tYOU HAVE DIED"
 # 				puts "\t\tGAME OVER"
 # 				break
 #end
 #end
	




