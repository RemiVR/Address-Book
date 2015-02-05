class PhoneNumber < ActiveRecord::Base
	belongs_to :contact

	validates :phone_number, numericality: true
	validates :phone_number, length: {in: 7..32}
	validates :phone_number, allow_blank: true
end
