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
			minutes: params[:time_entry][:minutes],
			hours: params[:time_entry][:hours],
			comment: params[:comment],
			date: params[:time_entry][:date])

		time_entry.save

		redirect_to("/projects/#{project.id}/time_entries")
	end
end

