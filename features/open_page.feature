# languaje: es
Feature: Open page

  Scenario: User open home page
    Given I open estudio page
    When they is open
    Then they should see a title and a description
