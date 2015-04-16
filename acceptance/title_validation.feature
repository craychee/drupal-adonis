@api @javascript
Feature: No swears in the title.
  As an editor
  I want to be warned
  when I put a swear word in the title.

  Background:
    Given I am logged in as a user with the "administrator" role
    And I am at "node/add/article"

Scenario:
  When I fill in "title" with "I like ship"
  And I press "Save"
  Then I should see the text "Bad boy, hell gnaw."

 Scenario:
  When I fill in "title" with "I like frack"
  And I press "Save"
  Then I should see the text "Bad boy, hell gnaw."

 Scenario:
  When I fill in "title" with "I like bunnies"
  And I press "Save"
  Then I should not see the text "Bad boy, hell gnaw."

