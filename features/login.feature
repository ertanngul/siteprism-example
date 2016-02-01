Feature: Login feature
@InProgress
  Scenario: successful login

    Given I am on login page
    When I enter "kliksa.test@gmail.com" and "123456" as user, password
    Then I am successfully login as "ALİ CENK E."

@Fast @Slow
Scenario: unsuccessful login with empty email and password

    Given I am on login page
    When I try to login with empty email and password
    Then site gives warning message for empty email and password
    And I can't login to site

