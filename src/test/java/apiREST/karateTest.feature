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

  Scenario: caso de prueba tipo POST
    Given url 'https://reqres.in/api/users'
    And request
    """
    {
    "name": "atomicpomelo",
    "job": "leader"
    }
    """
    And method POST
    Then status 201

  Scenario: caso de prueba tipo DELETE
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204