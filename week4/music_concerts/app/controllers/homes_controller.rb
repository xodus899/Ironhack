class HomesController < ApplicationController
	def index
		@show_concert_for_date = Concert.where(date: Time.now..Time.now.end_of_day)
		@up_coming_concerts = Concert.where(date: Time.now..Time.now.end_of_month)

		render :index
	end
end
