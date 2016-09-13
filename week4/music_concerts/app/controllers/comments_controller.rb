class CommentsController < ApplicationController

def index

	@comments = Comment.find_by(concert_id: params[:id])
end

def create
	@concert = Concert.find(params[:concert_id])
	@new_comment = @concert.comments.new(
			comment: params[:comment][:comment],
			name: params[:comment][:name],
		)

		@new_comment.save

		redirect_to "/concerts/#{@concert.id}"
	end


end