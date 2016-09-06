class SiteController < ApplicationController
	def home 
		render :home #similar to home:erb from sinatra, app/views/site/home.html ... this must match the file name..
	end

	def contact
		render :contact
	end
end
