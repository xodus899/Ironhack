class ProjectsController < ApplicationController
	def index 

		@projects = Project.order(created_at: :desc).limit(10)

		render :index
			
	end
	
	def show
		@project = Project.find_by(id: params[:id])

		unless @project
			render :projects_not_found
		end
	end

end
