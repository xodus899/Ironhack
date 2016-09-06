class SiteController < ApplicationController
	def home 
		render :home #similar to home:erb from sinatra, app/views/site/home.html ... this must match the file name..
	end

	def contact
		render :contact
	end

	def say_name
		@name = params[:name]

		render :say_name
	end
end
