class TodoList
	attr_accessor :tasks

	def initialize
	
	@tasks = []
	
	end

	def add_tasks(new_task)
		@tasks.push(new_task)
	end

end