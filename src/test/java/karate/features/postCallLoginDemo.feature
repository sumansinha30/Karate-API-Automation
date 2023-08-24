Feature: Create User and login

  Background: Set URL
    * url globalURL
    * print globalURL

  @debug
  Scenario: Create a User
    Given path '/users'
    And request
      """
      {
        "name": "Sumanta",
        "job": "leader"
      }
      """
    When method POST
    Then status 201
    And match response contains
      """
      {
          "name": "#string",
          "job": "#string",
          "id": "#string",
          "createdAt": "#string"
      }
      """
    And response.name == "Sumanta"
    And response.job == "leader"


    @Login
    Scenario: Successfully login
      Given path '/login'
      And request
      """
      {
          "email": "eve.holt@reqres.in",
          "password": "cityslicka"
      }
      """
      When method post
      Then status 200
      And match response ==
      """
      {
        "token": "#notnull"
      }
      """