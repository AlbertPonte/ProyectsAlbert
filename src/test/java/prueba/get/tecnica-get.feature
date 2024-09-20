Feature: List users with the metho

  Background:
    * url 'https://reqres.in/api/'
    * path userPath = '/users'
    * params {username: "#(user.name)", formatted: true, page: #(pageId)}
   # * def responseTest1 = read("saccessful-response-Listusers-get.json")
    #* def responseSinUsers = read("saccessful-response-SinUsers-get.json")
@Test
  Scenario Outline: List users by page <idTest>
    When method Get
    Then status 200
   # * match $ == responseTest1
    ##Capturar dato del response cuando se encuentra dentro de un [{}]
    * def idUser = $.data..id
    * print idUser

    Examples:
      | idTest | pageId |
      | Test 1 | 2      |
      | Test 2 | 1      |
