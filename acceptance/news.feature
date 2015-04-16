@api @javascript
Feature: News stream.
  As an anonymous user,
  I want to be able to view news items
  so that I can keep current with the organizations' announcement.

Scenario:
    Given I am an anonymous user
    And I am on the homepage
    Given "news" nodes:
      | title            | field_subtitle | body |
      | News Title One   | Subtitle One   | lorem ipsum |
      | News Title Two   | Subtitle Two   | lorem ipsum |
      | News Title Three | Subtitle Three | lorem ipsum |
    When I click "News"
    Then the url should match "news"
    Then I should see the text "News Title One"
    And I should see the text "News Title Two"
    And I should see the text "News Title Three"
