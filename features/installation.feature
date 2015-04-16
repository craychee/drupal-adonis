@api
Feature: Installation Verification
  As a developer,
  I want to know that adonis has installed,
  So that I can smoke test craychee's work.

  Scenario: Verify that the site and its variables are installed.
    Given I am on homepage
    Then I should see the text "Welcome to Adonis"
    And I should see the text "the prettiest Drupal that I can build"

  Scenario: Verify that user 1 can log into the site.
    Given I am not logged in
    When I visit "user/login"
    And I fill in "name" with "admin"
    And I fill in "pass" with "admin"
    And I press "Log in"
    Then I should see the link "Log out"
    And I should see the link "Add content"
