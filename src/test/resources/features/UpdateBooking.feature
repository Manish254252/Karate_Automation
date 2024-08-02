Feature:  Testing Update Booking end point
Background:
  * def responseOfCreateToken = call read("classpath:src/test/java/automation/getRequest/CreateToken.feature")
  * def responseOfBookingId = call read("classpath:src/test/java/automation/getRequest/GetBookings.feature")
  Scenario: Test put endpoint
    Given url "https://restful-booker.herokuapp.com"
    And path "booking/"+responseOfBookingId.bookingid
#    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = 'token='+responseOfCreateToken.token
    And request
    """
    {
    "firstname" : "Jim111",
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
    When method put
    And print response
    And print "===================+++++++++++"
    Then status 200
