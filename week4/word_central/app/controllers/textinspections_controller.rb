class TextinspectionsController < ApplicationController
	def new

		render :new
	end

	def create

		@text = params[:textinspection][:user_text]

		@word_count = @text.split(" ").length
		
		@frequency = {}

		@count = @text.split("")

		@count.each do |word|
			if @frequency[word]
				@frequency[word] += 1
			else
				@frequency[word] = 1
			end
		end
		

		render :results
	end

	
end



