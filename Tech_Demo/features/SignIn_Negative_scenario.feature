Feature: Macy's SignIn with invalid credentials

  Scenario: SignIn

    Given User navigate to the Macys Home Page
    Then User click on Sign In link
    And User type invalid credentials
    Then User clicks on SignIn Button
