Feature: To test the GET End point of application


  Scenario: Test Get End point with JSON data

    Given url 'https://restful-booker.herokuapp.com'
    And path '/booking'
#    And header Accept = 'application/json'
    When method get
    And print response
    Then status 200







