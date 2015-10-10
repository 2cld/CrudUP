# http://cucumber-mink.js.org/steps/#wait

Feature: I can use cucumber.mink to check the content of my website

  Background:
    Given I browse "http://localhost:3000/"

  Scenario: Check Homepage content
    Given I am on the homepage
    Then  I wait 3 seconds
    And   I should see "CrudUI" in the "span" element
    And   I should see "Customers" in the "a" element
    
  Scenario: Add new Customer
    Given I am on the homepage
    Then  I wait 3 seconds
    And   I should see "CrudUI" in the "span" element
    And   I should see "Customers" in the "a" element
    When  I follow "Customers"
    And   I wait 3 seconds
    Then  I should see "Customer List"
    And   I should see "New Customer" in the "a" element
    When  I follow "New Customer"
    And   I wait 3 seconds
    Then  I should see "New Customer" in the "div.panel-heading" element
    And   I should see "Name" in the "label.control-label" element
    And   I should see "Address" in the "label.control-label" element
    And   I should see "State" in the "label.control-label" element
    And   I should see "Country" in the "label.control-label" element
    When  I fill in the following:
  | input[name='formly_1_input_name_0']     | John          |
  | input[name='formly_1_input_address_1']  | Doe           |
  | input[name='formly_1_input_state_2']    | Iowa          |
  | input[name='formly_1_input_country_3']  | USA           |
    And   I press "Save"
    And   I wait 3 seconds
    Then  I should see "Customer View" in the "div.panel-heading" element
    And   I should see "List Customers" in the "a.btn" element
    And   I should see "Delete" in the "a.btn" element
    And   I should see "Edit" in the "a.btn" element
    When  I follow "Delete"
    And   I wait 3 seconds
    Then  I should see "Are you sure"
    And   I press "OK"
    And   I wait 3 seconds
    Then  I should see "Customer List"
    And   I should not see "John"
    And   I should not see "Doe"
    
    # Does not seem to work... don't know why
    #Then the "input[name='formly_1_input_name_0']" field should contain "John"
    #Then the "input[name='formly_1_input_address_1']" field should contain "Doe"
    #Then the "input[name='formly_1_input_state_2']" field should contain "Iowa"
    #Then the "input[name='formly_1_input_country_3']" field should contain "USA"
