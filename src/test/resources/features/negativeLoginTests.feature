@regression
Feature: Negative Login Test

  @wip
  Scenario Outline: negative login test
    Given The user is on the login page
    When The user logs in using "<invalidUserEmail>" and "<invalidPassword>"
    Then Validate that warning message is "<message>"
    Examples:
      | invalidUserEmail | invalidPassword | message                                  |
      | invalidUserEmail | Test1234        | Email address is incorrect. Please check |
      | john@gmail.com   | Test12          | Password is incorrect. Please check      |
      |                  | Test1234        | Please enter your email.                 |
      | john@gmail.com   |                 | Please enter your password!              |
      |                  |                 | Please enter your email.                 |

