Feature: Autocomplete
  In order to do funky stuff
  As a User
  I want autocomplete!

  @javascript
  Scenario: Autocomplete
    Given the following films exists:
      | name   |
      | film-1 |
      | film-2 |
      | film-3 |
    And I go to the home page
    And I fill in "Name" with "fi"
    And I choose "film-1" in the autocomplete list
    Then the "Name" field should contain "film-1"

  @javascript
  Scenario: Autocomplete
    Given the following films exists:
      | name   |
      | film-1 |
      | film-2 |
      | film-3 |
    And I go to the home page
    And I fill in "Name" with "tv"
    Then the "Name" field should contain "tv"

