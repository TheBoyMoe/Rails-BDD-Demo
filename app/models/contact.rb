class Contact < ApplicationRecord
	validates_presence_of :name, :address
	validates :phone_number, presence: true, length: {minimum: 10}
	# validates_length_of :phone_number, minimum: 10
end
