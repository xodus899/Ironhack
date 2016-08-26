
class Task
	attr_accessor(:content , :id )
	@@current_id = 1

	def initialize(content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@is_complete = false
		@created_at = Time.now.to_i
		@updated_at = nil
	end

	def id
		@id
	end

	def is_complete?
		@is_complete

	end

	def completed
		@is_complete = true
	end

	def not_complete
		@is_complete = false

	end

	def created_at
		@created_at
	end

	def updated_content(new_content)
		@content = new_content
	end




end

# task1 = Task.new("Buy the milk")
# puts task1.id

# task2 = Task.new("Wash the car")
# puts task2.id


