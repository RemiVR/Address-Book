class Contact < ActiveRecord::Base
	has_many :phone_numbers
	has_many :email_adresses

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :address, presence: true
end
