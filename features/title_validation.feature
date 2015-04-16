@api @phpspec
Feature: No swears in the title.
  As an editor
  I want to be warned
  When I put a swear in the title
  So that I can maintain my site's brand.

  Background:
    Given I am logged in as a user with the "administrator" role
    And I am at "node/add/article"

  Scenario: ie6 is a swear word
    When I fill in "title" with "you must work on ie6"
    And I press "Save"
    Then I should see the text "Nope."

  Scenario: ie6 is a swear word
    When I fill in "title" with "WE NEED IE6"
    And I press "Save"
    Then I should see the text "Nope."

  Scenario: ie6 is a swear word
    When I fill in "title" with "I love wordpress"
    And I press "Save"
    Then I should see the text "Nope."

  Scenario: ie6 is a swear word
    When I fill in "title" with "our servers run on php5.2"
    And I press "Save"
    Then I should see the text "Nope."

  Scenario: ie6 is a swear word
    When I fill in "title" with "test your shit"
    And I press "Save"
    Then I should not see the text "Nope."
