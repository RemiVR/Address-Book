class ContactsController < ApplicationController
	def index
		@contact = Contact.order('created_at')
	end
	def show
		@contact = Contact.find(params[:id])
	end
	def new
		@contact = Contact.new
	end
	def create
		@contact = Contact.new contact_params
		if @contact.save
			redirect_to action: 'show', controller: 'contacts', id: @contact.id
		else
			render 'new'
		end
	end
	private
	def contact_params
		params.require(:contact).permit(:name, :address)
	end
end
