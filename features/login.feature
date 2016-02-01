Feature: Login feature

  Scenario: successful login

    Given I am on login page
    When I enter "email" and "password" as user, password
    Then I am successfully login as "username"

Scenario: unsuccessful login with empty email and password

    Given I am on login page
    When I try to login with empty email and password
    Then site gives warning message for empty email and password
    And I can't login to site

