Feature: Contact page

  Scenario: Viewing the contact's details
    Given there is a contact with name "John Smith" the address "Any street, any town" and phone number "1234567890"
    When I am on the "contact" page of "John Smith"
    Then I should see "John Smith"
    And I should see "Any street, any town"
    And I should see "1234567890"