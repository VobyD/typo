Feature: Merge Articles
  As a blog administrator
  In order to merge articles that are similar
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And the following articles exists:
    | id | title            | body                     | state       | published |
    | 1  | First Article    | First Article Content    |   published |  1        |
    | 2  | Second Article   | Second Article Content   |   published |  1        |
    | 3  | Third Article    | Third Article Content    |   published |  1        |
    
  Scenario: I should see this articles in admin page
    Given I am logged into the admin panel
    When I follow "Articles"
    Then I should see "First Article"
    

  Scenario: Successfully merge articles by admin
    Given I am logged into the admin panel
    And I am on the edit 1 article page
    When I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should be on the edit 1 article page
    And I should see "First Article Content"
    And I should see "Second Article Content"



  Scenario: Fail to merge articles by not admin user
    Given I am on the edit 1 article page
    Then I should be on login page
    And I should see "you are not allowed to perform this action"
