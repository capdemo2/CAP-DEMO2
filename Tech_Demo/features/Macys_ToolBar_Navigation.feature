Feature: Macy's tool bar navigation

  Scenario Outline: Item selections from the Macy's tool bar
    Given User navigate to the Macys Home Page
    Then User Hover Over <toolbar>
    Then User select <items> form the menu

    Examples:
    |toolbar|items|
    |HOME   |//*[@id="firstNavSubCat"]/li[2]/ul/li[4]/a|
#    |BED & BATH|Comforters|
#    |WOMEN       |Tops      |
#    |MEN         |Active    |