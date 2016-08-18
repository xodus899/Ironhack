class Designer
	include Caffeine
	include Salary_received

	def design
		Salary_received
		Caffeine
		design_task
	end

	def design_task
		puts "Clip,clip,snip,OUCH!!!!"



	end
end

# dan = Designer.new
# dan.salaries