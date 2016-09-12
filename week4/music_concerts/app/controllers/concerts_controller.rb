class ConcertsController < ApplicationController

	def index 
		@concert = Concert.all

		render :index
	end 

	def new
		@create_concert = Concert.new

		
	end

	def create

		@created_concert = Concert.new(
			name:        params[:concert][:name],
			artist:      params[:concert][:artist],
			venue: 		 params[:concert][:venue],
			city:  		 params[:concert][:city],
			date:  		 params[:concert][:date],
			price:  	 params[:concert][:price],
			description: params[:concert][:description] )



		@created_concert.save
		redirect_to("/concerts")

	end

	def show
		@one_concert = Concert.find(params[:id])

		render :show
	end
end
