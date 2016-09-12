class ConcertsController < ApplicationController

	def index 
		@concert = Concert.all
		
		render :index

	end 
end
