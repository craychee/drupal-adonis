@api
Feature: Do not allow swear words in the title.
  As an editor,
  I want to be warned when I put a swear word in the title,
  so that I can maintain my organization's brand.

  Scenario:
    Given I am logged in as a user with the "administrator" role
    And I am at "node/add/article"
    When I fill in "title" with "you must work on ie6"
    And I press "Save"
    Then I should see the text "Nope."
