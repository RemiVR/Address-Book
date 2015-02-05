class PhoneNumbersController < ApplicationController
	def show
		@phone_number = PhoneNumber.find(params[:id])
	end
	def new
		@phone_number = PhoneNumber.new
	end
	def create
		@phone_number = PhoneNumber.new phone_params
		if @phone_number.save
			redirect_to action: 'show', controller: 'contacts'
		else
			render 'new'
		end
	end
	private
	def phone_params
		params.require(:phone_number).permit(:phone_number, :contact_id)
	end
end
