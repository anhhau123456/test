# features/reg.feature
Feature: Register
  In resgister page
  As a anonymous user
  I need resgister an account

@javascript
  Scenario: resgister an account success
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "ntahau@gmail.com"
    And I press "resgister"
    Then I should see "Account create success"
@javascript
  Scenario: Check the availability of Password
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I press "resgister"
    Then I should see "Password require"
@javascript
  Scenario: Check the availability of Re-Password
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I press "resgister"
    Then I should see "Re-Password require"
@javascript
  Scenario: Check the availability of Email
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I press "resgister"
    Then I should see "Email require"
@javascript
  Scenario: Check the availability of Username
    Given I am on "register.php"
    When I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "ntahau@gmail.com"
    And I press "resgister"
    Then I should see "Username require"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "ntahau"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
   Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "#@%^%#$@#$@#.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "@gmail.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau.gmail.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anh <anhhau@gmail.com>"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail@gmail.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with ". anhhau@gmail.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau.@gmail.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
@javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau..s@gmail.com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
    @javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail.com anhhau"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
  @javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
  @javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail..com"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
  @javascript
  Scenario: Check for the error message for fill email address
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@111.222.333"
    And I press "resgister"
    Then I should see "Pls fill the correct email"
  @javascript
  Scenario: Check the error message for more than 20 characters for username
    Given I am on "register.php"
    When I fill in "username" with "anhhau123456789123456789"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail.com"
    And I press "resgister"
    Then I should see "Username has more than 20 characters"
  @javascript
  Scenario: Check the error message for special characters for username
    Given I am on "register.php"
    When I fill in "username" with "anhhau@~!~~|?"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail.com"
    And I press "resgister"
    Then I should see "Username dont contain special characters"
  @javascript
  Scenario: Check the error message for less than 6 characters for password
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhha"
    And I fill in "re-password" with "anhha"
    And I fill in "Email" with "anhhau@gmail.com"
    And I press "resgister"
    Then I should see "Password has more than 6 characters"
  @javascript
  Scenario: Check the error message for Re-password field must match with password field
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau1"
    And I fill in "Email" with "anhhau@gmail.com"
    And I press "resgister"
    Then I should see "Re-password field must match with password field"
  @javascript
  Scenario: Check the text field when click on Clear button
    Given I am on "register.php"
    When I fill in "username" with "anhhau"
    And I fill in "password" with "anhhau"
    And I fill in "re-password" with "anhhau"
    And I fill in "Email" with "anhhau@gmail.com"
    And I press "clear"
    Then the "username" field should contain ""
    And the "password" field should contain ""
    And the "re-password" field should contain ""
    And the "Email" field should contain ""
  @javascript
  Scenario: return to home page
    Given I am on "register.php"
    When I follow "Home"
    Then I should see "home page"
