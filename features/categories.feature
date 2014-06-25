Feature: Categories
  As an admin
  In order to make something with categories
  I want to open Categories without an error

  Scenario: I need to know that admin page opens
    Given the blog is set up
    And I am logged into the admin panel
    Then I should see "Welcome back, admin!"
    And I should see "Categories"

  Scenario: Open Categories link
    Given the blog is set up
    And I am logged into the admin panel
    Then I should see "Welcome back, admin!"
    When I follow "Categories"
    Then I should see "Leave empty if you don't know what to put here"
    And I should see "Description"
