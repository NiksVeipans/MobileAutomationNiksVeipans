Feature: Authorize
  cool feature comments

  @runx
  Scenario: As a user I can authorize with new user credentials
    Given I get to the registration form
    When I input random user credentials in registration form
    And I submit the registration details
    And The login screen is displayed
    And I input the created account credentials
    And I submit the login details
    Then The home screen is displayed

  @run
  Scenario: As a user I can authorize with existing user credentials
    Given I get to the login screen
    When I input and existing account credentials
    And I submit the login details
    Then The home screen is displayed




