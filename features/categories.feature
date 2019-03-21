Feature: Create categories
  As a blog administrator
  so that i can share my thoughts to the world
  I want to be able to add categories to my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
   Scenario: Successfully Create categories
    Given I am on the new categories page
    When I fill in "category_name" with "sports"
    And I fill in "category_keywords" with "cricket"
    And I fill in "category_permalink" with "linkc"
    And I fill in "category_description" with "its cricket"
    And I press "Save"
    Then I should see "sports"
    Then I should see "cricket"
    Then I should see "links"
    Then I should see "its cricket"
    
    Then I follow "sports"
    When I fill in "category_name" with "music"
    And I fill in "category_keywords" with "instruments"
    And I fill in "category_permalink" with "linki"
    And I fill in "category_description" with "its violin"
    And I press "Save"
    Then I should see "music"
    Then I should see "instruments"
    Then I should see "linki"
    Then I should see "its violin" 