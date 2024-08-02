Feature:  Testing Delete Booking end point
  Scenario: Test Delete endpoint
    Given url "https://restful-booker.herokuapp.com"
    And path "booking/1"
#    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = 'token=8975497b093ab23'
    When method delete
    And print response
    And print "===================+++++++++++"
    Then status 201