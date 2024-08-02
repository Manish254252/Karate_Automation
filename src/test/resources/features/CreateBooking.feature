Feature:  Testing create Booking end point
  Scenario: Test POST endpoint
    Given url "https://restful-booker.herokuapp.com"
    And path "booking"
#    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And request
    """
    {
    "firstname" : "Jim",
    "lastname" : "Brown",
    "totalprice" : 111,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
    "additionalneeds" : "Breakfast"
   }
    """
    When method post
    And print response
    And print "===================+++++++++++"
    Then status 200
