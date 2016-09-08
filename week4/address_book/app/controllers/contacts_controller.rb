class ContactsController < ApplicationController

	def index

		@contacts = Contact.order(created_at: :asc)

		render :index
	end

	def new

		render :new
	end

	def create
		contact = Contact.new(
		  :name => params[:contact][:name],
    	  :address => params[:contact][:address],
      	  :phonenumber => params[:contact][:phonenumber],
      	  :emailaddress => params[:contact][:emailaddress])

		contact.save
		redirect_to("/contacts")

	end

	def show
		@contact = Contact.find_by(id: params[:id])
	end
end
