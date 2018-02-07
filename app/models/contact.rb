class Contact < ApplicationRecord
	validates_presence_of :name, :address
	validates :phone, presence: true, length: {minimum: 10}
	# validates_length_of :phone, minimum: 10
end
