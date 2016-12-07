Feature: Macy's tool bar navigation

  Scenario Outline: Item selections from the Macy's tool bar
    Given User navigate to the Macys Home Page
    Then User Hover Over <toolbar>
    Then User select <items> form the menu


    Examples:
    |toolbar|items|
    |BED & BATH|Bed in a Bag|
    |WOMEN       |Blazers      |
    |MEN         |Golf Shop    |
    |JUNIORS     |Graphic Clothing     |
    |BEAUTY      |CHANEL    |
    |SHOES       |Boots     |
    |JEWELRY     |Diamonds     |
    |SHOES       |Boots     |
    |KIDS        |Baby Girl (0-24 months)    |
    |HANDBAGS    |Designer Handbags     |