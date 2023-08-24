Feature: Get the 2nd User details

  Background: Set URL
    * url globalURL
    * print globalURL

    @first
    Scenario: Get the details
      Given path '/users/2'
      When method GET
      Then status 200
      And match header Content-Type contains 'application/json'
      And print response
      And match response.data.id == 2
      And match response.data.email == "janet.weaver@reqres.in"
      And match response.data.first_name == "Janet"
      And match response.data.last_name == "Weaver"
      And match response.support contains
      """
      {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
      }
      """
