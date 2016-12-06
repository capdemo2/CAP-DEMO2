Feature: Macys Registration Secnarios for Cross Browser and Cross Platform Testing

  @Author:MOKLASUR_RAHMAN
  @Date:12/05/2016
  @User_Story:FTC-2 @smoke @E2E


  Scenario Outline: Registration
    Given User navigate to the Macys Home Page "<browser>"
    Then User click on the My Account link
    And user clicks on Create account button
    Then user fills out all the information to create account
    And user completes registration
    Then user verifies that Registration is completed



    Examples:
      |browser|
      |chrome40\|windows7|
      |firefox36\|windows81|
      |chrome40\|windowsxp|
      |firefox33\|windows7|
#      |ie11\|windows7|

 #     |chrome41\|osx109|
#      |chrome42\|osx109|
#      |chrome40\|osx108|
#      |chrome41\|osx108|
#      |chrome42\|osx108|
#      |chrome41\|windows7|
#      |chrome42\|windows7|
#      |chrome41\|windowsxp|
#      |chrome42\|windowsxp|
#      |ie8\|windows7|
#       |ie8\|windows7|
#      |ie10\|windows7|
#      |ie11\|windows7|
#      |firefox25\|windows7|
#      |firefox26\|windows7|
#      |firefox27\|windows7|
#      |firefox28\|windows7|
#      |firefox29\|windows7|
#      |firefox30\|windows7|
#      |firefox31\|windows7|
#      |firefox32\|windows7|
#
#      |firefox34\|windows7|
#      |firefox35\|windows7|
#      |firefox36\|windows7|
#      |firefox37\|windows7|
#      |firefox25\|windowsxp|
#      |firefox26\|windowsxp|
#      |firefox27\|windowsxp|
#      |firefox28\|windowsxp|
#      |firefox29\|windowsxp|
#      |firefox30\|windowsxp|
#      |firefox31\|windowsxp|
#      |firefox32\|windowsxp|
#      |firefox33\|windowsxp|
#      |firefox34\|windowsxp|
#      |firefox35\|windowsxp|
#      |firefox36\|windowsxp|
#      |firefox37\|windowsxp|
#      |firefox37\|windows81|
#      |safari8\|iphone5|
