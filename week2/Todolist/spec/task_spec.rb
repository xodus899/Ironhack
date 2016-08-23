require_relative("../lib/task.rb")

RSpec.describe Task do 

	describe "id" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")
	# 	before :each do
	# 	@task1 = Task.new
	# end
		it "checks if a task is on the list" do
		expect(task1.id).to eq(1)
		expect(task2.id).to eq(2)
	end
end
	describe "is complete" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "checks for a not completed task." do
		expect(task1.is_complete?).to eq(false)
		expect(task2.is_complete?).to eq(false)
	end
end
	describe "completed" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "checks for completed tasks" do
		expect(task1.completed).to eq(true)
		expect(task2.completed).to eq(true)
	end
end
	describe "not complete" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "checks for not completed tasks" do
		expect(task1.not_complete).to eq(false)
		expect(task2.not_complete).to eq(false)
	end
end
	describe "created at" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "checks for the time created" do
		expect(task1.created_at).to eq(Time.now.to_i)
		expect(task2.created_at).to eq(Time.now.to_i)
	end
end
	describe "updates the content of the task" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "updates the content to new information" do
		expect(task1.updated_content("Get gas")).to eq("Get gas")
		expect(task2.updated_content("Walk the dog")).to eq("Walk the dog")
	end
end



end

