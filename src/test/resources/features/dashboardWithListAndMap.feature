@regression
Feature: Dashboard Menu Checks

  Background:
    Given The user is on the login page

  @c_List
  Scenario: Example-1 Cucumber List
#    Given The user is on the login page
    When The user logs in using "miamia@gmail.com" and "Mia123456"
    Then The user should be able to login
    And The user should be able to see following menu
      | Dashboard  |
      | Developers |
      | Components |
      | Forms      |
      | JavaScript |
      | miamia     |

  @c_Map
  Scenario: Example-2 Cucumber Map
#    Given The user is on the login page
    When The user logs in using following menu
      | username | miamia@gmail.com |
      | password | Mia123456        |
      | name     | miamia           |
    Then The user should be able to login
    And The user should be able to see following menu
      | Dashboard  |
      | Developers |
      | Components |
      | Forms      |
      | JavaScript |
      | miamia     |


#  Class Task
#  go to webpage
#  login with user credentials
#  navigates to my Profile menu
#  see following menu  Overview, Edit Profile, Add Experience, Add Education, Change Password

  @c_taskf1
  Scenario: Example-4 for Task
#    Given The user is on the login page
    When The user logs in using "miamia@gmail.com" and "Mia123456"
    And The user navigates to "miamia" and "My Profile" sub menu
    Then The user should be able to see following sub menu
      | Overview        |
      | Edit Profile    |
      | Add Experience  |
      | Add Education   |
      | Change Password |



  Scenario Outline: Example-4 for "<name>" with Scenario Outline
    When The user logs in using following menu
      | username | <userEmail> |
      | password | <password>  |
      | name     | <name>      |
    Then The user should be able to login
    Then The user should be able to see following menu
      | Dashboard  |
      | Developers |
      | Components |
      | Forms      |
      | JavaScript |
      | <name>    |

    Examples:
      | userEmail        | password  | name   |
      | miamia@gmail.com | Mia123456 | miamia |
      | john@gmail.com   | John1234. | John   |





#  Class task f2 HW
#  go to webpage   https://demoqa.com/
#  verify that user see following menu list elements, forms, alerts ...

  @wip
  Scenario: Demoqa lists
    Given The user is on the demoqa webpage

