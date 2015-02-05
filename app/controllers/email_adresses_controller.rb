class EmailAdressesController < ApplicationController
	def show
		@email_address = EmailAddress.find(params[:id])
	end
	def new
		@email_address = EmailAddress.find(params[:id])
	end
end
