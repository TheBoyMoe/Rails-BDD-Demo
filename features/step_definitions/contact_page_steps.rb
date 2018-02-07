Given(/^there is a contact with name "([^"]*)" the address "([^"]*)" and phone number "([^"]*)"$/) do |name, address, phone_number|
	@contact = FactoryBot.create(:contact, name: name, address: address, phone_number: phone_number)
end

When(/^I am on the "([^"]*)" page of "([^"]*)"$/) do |page, name|
	@contact = Contact.find_by_name(name)
	visit "/contacts/#{@contact.id}"
end

Then(/^I should see "([^"]*)"$/) do |string|
	expect(page).to have_text(string)
end

