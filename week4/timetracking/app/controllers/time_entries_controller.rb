class TimeEntriesController < ApplicationController

	def index 

		# 1.Find the project
		# 2. Display all time entries 

		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries.where(created_at: (Date.today.beginning_of_month..Date.today.end_of_month)).limit(5)

	end

	def new 

		@project = Project.find(params[:project_id])

		@time_entry = @project.time_entries.new

	end

	def create 

		project = Project.find(params[:project_id])

		time_entry = project.time_entries.new(

		time_entry.save

		redirect_to("/projects/#{project.id}/time_entries")
	end

	def edit 
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])


	end

	def update
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find(params[:id])

		if time_entry.update (time_entry_params)
			

			redirect_to "/projects/#{project_id}/time_entries"
		else
			redirect_to "/projects/#{project_id}/time_entries/#{time_entry.id}/edit"

	end
end

private	

	def time_entry_params 
		params.require(:time_entry).permit(:hours,:minutes, :date)

	end
end



