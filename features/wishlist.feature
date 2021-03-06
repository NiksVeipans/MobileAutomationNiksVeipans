Feature: Wishlist
  nice wishlist feature comments

  @runx
  Scenario: As a user I can view liked items in my wishlist
    Given I authorize with a new account
    When I open the first item in the home screen
    And I like all the items that are visible
    And I navigate to the wishlist
    Then I validate that all the added items are present
