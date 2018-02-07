Feature: Contact page

  Scenario: Viewing the contact's details
    Given there is a contact with name "John Smith" with address "Any street, any town" and phone number "1234567890"
    When I am on the contact's contact page
    Then I should see their "name"
    And I should see their "address"
    And I should see their "phone_number"