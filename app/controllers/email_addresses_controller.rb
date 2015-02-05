class EmailAddressesController < ApplicationController
	def show
		@email_address = EmailAddress.find(params[:id])
	end
	def new
		@contact = Contact.find(params[:contact_id])
		@email_address = EmailAddress.new
	end
	def create
		@contact = Contact.find(params[:contact_id])
		@email_address = EmailAddress.new email_params
		if @email_address.save
			redirect_to action: 'show', controller: 'contacts', id: @contact
		else
			render 'new'
		end
	end
	private
	def email_params
		params.require(:email_address).permit(:email_address, :contact_id)
	end
end
