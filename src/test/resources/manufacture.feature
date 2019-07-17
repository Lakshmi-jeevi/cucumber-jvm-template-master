Feature: Manufacture module

  @regression
  Scenario Outline: Search a manufacture from the list as customer

    Given customer is in home page
    When customer search with a keyword "<keyword>"
    Then customer should see at least product with title "<result>"
    And close browser
    Examples:
      | keyword | result                    |
      | Apple   | Apple MacBook Pro 13-inch |
#      | APp     |

#
##Feature: Manufacture module
##  Background:
##
##    Then user should view Dashboard page.
##    And go to manufacture page
#  @regression
#  Scenario Outline: Search a manufacture from the list
#
#    When customer search with a keyword "<keyword>"
#    Then  customer should see at least product with title <iphone>
#
#    Examples:
#      | keyword |
#      | Apple   |
#      | APp     |
#
#  @regression
#  Scenario: Search a manufacture from the list with invalid manufacture
#    When he search with a keyword "abbcde"
#    Then I should see "No data available in table" message
#    And Close browser
#
#
#  @regression
#  Scenario : Add new manufacture
#    And Click on Add new  button
#    Then Add anew manufacturer page should be displayed
#    And  Select the advanced button
#    And  Enter the Name of the Manufacturer "LG"
#    And  Enter description " LG Life's Good"
#    And   Upload a image for manufacture "LG.tiff"
#    And  check the publish button
#    And  un check the Allow customers to select page size option
#    And  Add price ranges for  "0-999; 1000-1200; 1201 -"
#    And  Enter the Search engine friendly page name  as "LG products"
#    And Click on Save button.
#    Then  "The new manufacturer has been added successfully" message should be present
#    When customer enter in the front end
#    Then The newly added manufacture should be available under manufacture list.
#
#
#  Scenario Outline: Edit manufacture info details
#    And  he search with a keyword "LG"
#    And  Click on Edit button on the search page.
#    When he can enter the details in Manufacture info panel Name field "Life's Good"
#    And  In description of the manufacture i should use the layout and format
#    And  In picture field Upload a image "<upload>"
#    And  click on Save button
#    Then  i should see "Updated successfully" message
#    Then i should see the updated manufacture information
#
#    Examples:
#      |upload|
#      |LG.tiff  |
#      |LG5.jpeg  |
#      |LG3.jfif |
#      | LG1.png |
#      |LG3.bmp  |
#
#  Scenario: Add manufacture info details without Name field
#    And Click on Add new  button
#    Then Add anew manufacturer page should be displayed
#    When In description of the manufacture enter "Description for the field"
#    And  In picture field Upload a image "LG.tiff"
#    And  click on Save button
#    Then  i should see "Please enter the manufacture name" message
#
#  Scenario: Edit manufacture display details with uncheck the publish button
#
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And uncheck the published check box
#    And save the details
#    Then the saved successfully message should be shown
#    When the customer search for apple keyword in front end
#    And get the results page
#    Then the "apple" should NOT be shown in the Manufacturers section
#
#  Scenario: Edit manufacture display details with check the publish button
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And check the published check box
#    And save the details
#    Then the saved successfully message should be shown
#    When the customer search for apple keyword in front end
#    And get the results page
#    Then the "apple" should  be shown in the Manufacturers section
#
#  Scenario Outline: Edit Manufacture display panel with check the allow customers to select page size
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And check the allow customers to select page size check box
#    And  select the page size from the drop down "<size>"
#    And  save the details
#    Then the saved successfully message should be shown
#    When the customer search for apple keyword in front end
#    And get the results page
#    Then the apple products should be displayed according to the page size.
#
#    Examples:
#      |size|
#      |3   |
#      |6   |
#      |9   |
#
#
#  Scenario : Edit Manufacture display panel with uncheck the allow customers to select page size
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And uncheck the allow customers to select page size check box
#    And save the details
#    Then the saved successfully message should be shown
#    Then Page size field becomes visible in the Administration area.
#
#  Scenario:  Edit Manufacture display panel with price ranges
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And Enter the price ranges and Separate with semicolon"0-999; 1000-1200; 1201 -"
#    And save the details
#    Then the saved successfully message should be shown
#    When the customer search for apple keyword in front end
#    And get the defining ranges of price filter for the apple manufacturers
#    Then the filter should work according to the range
#
#  Scenario:  Edit Manufacture display panel price ranges with invalid currency
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And Enter the price ranges with invalid currency-Which is not defined in the currency window and Separate  with semicolon"0-999; 1000-1200; 1201 -"
#    And save the details
#    Then invalid currency message should be shown
#
#  Scenario:  Edit Manufacture display panel price ranges with invalid Separator
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And Enter the price ranges with valid currency and Separate  with "<data>"
#    And save the details
#    Then Separate should be semicolon message should be shown
#
#      |data|
#      | 0-999, 1000-1200, 1200- |
#      | 0-999 - 1000-1200 - 1200- |
#      | 0-999 :1000-1200: 1200- |
#      | 0-999/1000-1200/ 1200- |
#      | 0-999& 1000-1200& 1200- |
#      | 0-999+ 1000-1200+ 1200- |
#
#  Scenario : Edit manufacture display details with Display Order
#
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And select the display order from the dropdown
#    And click on save button
#    Then the saved successfully message should be shown
#    When the customer search for apple keyword in front end
#    Then the manufactures should be displayed based on the display order(Ascending)
#
#  Scenario : add product to the manufacture
#    When he search with a keyword "apple"
#    And edit apple manufacture
#    And Go to product panel
#    And  click on Add anew product button
#    Then Add a new product page should be displayed.
#    And  select the " Apple iCam" from the list
#    And Click on Save button
#    Then newly added product " Apple iCam" should be appear under products list.
#    When the customer search for "Apple iCam" in front end
#    And  "Apple iCam" product shout be displayed
#    Then "Apple iCam" product should be associated with "Apple" manufacture.
















