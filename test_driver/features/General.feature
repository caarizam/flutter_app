Feature: Initial test

  Scenario Outline: Basic login scenario
    Given The client sign in with user "<username>" and password "<password>"
    When The client opens the register form
    And The client fill the registration form with:
      | username   | password   | confirm   |
      | <username> | <password> | <confirm> |

    Examples: Data to test
      | username          | password  | confirm   |
      | qa_12@yopmail.com | 123456    | 123456    |
      #| qa_13@yopmail.com | 858585    | 858585    |
      #| qa_14@yopmail.com | dd11      | dd11      |
      #| qa_15@yopmail.com | 12345ddd6 | 12345ddd6 |