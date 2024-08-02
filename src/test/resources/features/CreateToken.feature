Feature:Feature:  Testing create Token end point

  Scenario:
    Given url "https://restful-booker.herokuapp.com/auth"
    And request
        """
          {
          "username" : "admin",
          "password" : "password123"
          }
          """
    When method post
    Then print response.token
    And def token = response.token
    And print token