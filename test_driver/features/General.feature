Feature: Initial test

  Scenario: Basic login scenario
    Given The client sign in with user "charlie@yopmail.com" and password "123456"
    When The client opens the register form
    #And The client fill the registration form with: username "charlie@yopmail.com" and password "111" and confirm password "111"