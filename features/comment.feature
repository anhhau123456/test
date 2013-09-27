# features/post.feature
Feature: Post a blog
  In post page
  As a user
  I need post a comment for post

  @javascript
  Scenario: post a blog success
    Given I am on "comment.php"
    When I login on with user "anhhau"
    And I fill in "comment" with "comment here for testing"
    And I press "sendComment"
    Then I should see "Comment success"

  @javascript
  Scenario: post a blog success
    Given I am on "comment.php"
    When I fill in "comment" with "comment here for testing"
    And I press "sendComment"
    Then I should see "Please login"

  @javascript
  Scenario: post a blog success
    Given I am on "comment.php"
    When I login on with user "anhhau"
    And I press "sendComment"
    Then I should see "Please add comment"

  @javascript
  Scenario: return to home page
    Given I am on "register.php"
    When I follow "Home"
    Then I should see "home page"

  @javascript
  Scenario: Check the text field when click on Clear button
    Given I am on "post.php"
    When I login on with user "anhhau"
    And I fill in "comment" with "comment here for testing"
    And I press "clear"
    Then the "comment" field should contain ""

  @javascript
  Scenario: the owner of post would recieved an email once other user written a comment on his post
    Given I am on "comment.php"
    When I login on with user "anhhau"
    And I fill in "comment" with "comment here for testing"
    And I press "sendComment"
    Then I should see "An email has sent"



