require_relative("../lib/todolistclass.rb")
require_relative("../lib/task.rb")




RSpec.describe TodoList do 
	# task3= Task.new("mop")
	# task4= Task.new("clean")
	# task5=Task.new("blah")

	let(:task3) {Todolist.new("Mop the floor")}
	let(:task4) {TodoList.new("Wash the car")}
	let(:task5) {Todolist.new("Drink some beer")}
	let(:no_list) {Todolist.new}
	let(:list) do

		
		list = TodoList.new
		list.add_tasks(task3)
		list.add_tasks(task4)
		list.add_tasks(task5)

		list

	describe "add_tasks" do

		it "takes a task and adds it to the list" do
		expect(list.add_tasks("")).to eq(5)
		
			end
		end
	end
end
	
