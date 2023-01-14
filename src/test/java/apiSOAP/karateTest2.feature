Feature: Plan de pruebas

  Scenario: caso de prueba tipo GET
    Given url 'https://reqres.in/api/users/2'
    When header 'Content-Type' = 'Application/json'
    When method GET
    And match response.data.first_name == '#string'
    And match response.data.first_name == 'Janet'
    And match response.data.id == '#number'
    And match response.data.id == 2
    Then status 200