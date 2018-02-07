require 'rails_helper'

RSpec.describe Contact, type: :model do
	before {@contact = build(:contact)}

	context 'validate model attributes' do
    it {is_expected.to validate_presence_of(:name)}
    it {is_expected.to validate_presence_of(:address)}
    it {is_expected.to validate_presence_of(:phone)}
    it {is_expected.to validate_length_of(:phone).is_at_least(10)}

		it "is a valid user" do
			expect(@contact).to be_valid
		end
	end

end
