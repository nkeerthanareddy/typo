Feature: Create Category
    As an administrator
    In order to place articles into categories
    I want to be able to create categories

    Background:
        Given the set up of the blog is done
        And I am logged in to the admin panel
        When I follow "Categories"

    Scenario: Check Display
        Then I should see "Categories"
        And I should see "Keywords"
        And I should see "Permalink"
        And I should see "General"

    Scenario: Create Category
        Given I am on the new categories page
        And I fill in "category_name" with "engineering"
        And I fill in "category_keywords" with "software"
        And I fill in "category_description" with "all engineering"
        And I press "Save"
        Then I should see "engineering"

    Scenario: Edit Category
        Given a category is created
        And I am on the category edit page for "engineering"
        And I fill in "category_keywords" with "electrical"
        And I fill in "category_description" with "all of engineering"
        And I press "Save"
        Then I should see "electrical"
        Then I should see "all of engineering"