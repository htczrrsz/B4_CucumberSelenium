@regression
Feature: Edit Profile Page

  @editprofile
  Scenario Outline: Edit Profile Test
    Given The user is on the login page
    When The user logs in using "<userEmail>" and "<password>"
    And The user navigates to "<name>" and "<menu>" sub menu
    And The user navigates to "<sub menu>"
    And The user adds "about" "<about>"
    And The user adds "company" "<company>"
    And The user adds "<job>" from menu
    And The user adds "website" "<website>"
    And The user adds "location" "<location>"
    And The user adds "skills" "<skills>"
    And The user clicks on save changes button

    Examples:
      | userEmail        | password  | name   | menu       | sub menu | about | company | job | website | location | skills |
      | miamia@gmail.com | Mia123456 | miamia | My Profile | Edit Profile | graduated SDET 2023 | Amazon | QA Test Engineer | www.amazon.com | London | Selenium, Java |
      | john@gmail.com | John1234. | John | My Profile | Edit Profile | graduated SDET 2022 | KraftTech | QA | www.krafttech.com | Istanbul | Selenium, Java |
      | mike@gmail.com | mike1234 | Mike | My Profile | Edit Profile | graduated SDET 2021 | Google | QA | www.google.com | California | Selenium, Java |

#    Then The user should be able to see credentials that have been added
