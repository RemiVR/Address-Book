class Contact < ActiveRecord::Base
	has_many :phone_numbers
	has_many :email_addresses

	validates :name, presence: true, uniqueness: true
	validates :address, presence: true
end
