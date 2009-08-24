Feature: Basics
  In order to develop and maintain applications using icalendar data
  As a developer
  I want to represent icalendar data in the database

  Scenario: Using datamapper
    Given I am using datamapper
    When event
    Then outcome
  
  Scenario: Using activerecord
    Given I am using activerecord
    When I generate an event model
    Then it should work
