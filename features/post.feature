# features/post.feature
Feature: Post a blog
  In post page
  As a user
  I need post a blog

  @javascript
  Scenario: post a blog success
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "title" with "Title of blog"
    And I fill in "content" with "content of blog"
    And I press "post"
    Then I should see "Post success"

 @javascript
  Scenario: Check the availability of user login
    Given I am on "post.php"
    When I fill in "title" with "Title of blog"
    And I fill in "content" with "content of blog"
    And I press "post"
    Then I should see "Please login"

  @javascript
  Scenario: Check the availability of Content
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "title" with "Title of blog"
    And I press "Post"
    Then I should see "Content require"

 @javascript
  Scenario: Check the availability of Title
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "content" with "content of blog"
    And I press "Post"
    Then I should see "Title require"

 @javascript
  Scenario: Check the error message for less than 10 characters for Content
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "title" with "Title of blog"
    And I fill in "content" with "content"
    And I press "post"
    Then I should see "Content has more than 10 characters"

 @javascript
  Scenario: Check the error message for less than 6 characters for Title
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "title" with "title"
    And I fill in "content" with "content of blog"
    And I press "post"
    Then I should see "Title has more than 6 characters"

  @javascript
  Scenario: Check the text field when click on Clear button
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "title" with "Title of blog"
    And I fill in "content" with "content of blog"
    And I press "clear"
    Then the "title" field should contain ""
    And the "content" field should contain ""

  @javascript
  Scenario: return to home page
    Given I am on "register.php"
    When I follow "Home"
    Then I should see "home page"