Feature: Event List
  In order to leverage the calendar models
  As a web application developer
  I want to feature a list of events within a date/time range

  Scenario: Creating an event
    Given I am on the event listing page
    When I follow "New Event"
      And I fill in "What" with "Eat Chicken"
      And I fill in "Start Date" with "1/1/2009"
      And I fill in "Start Time" with "9:00am"
      And I fill in "End Date" with "1/3/2009"
      And I fill in "End Time" with "10:00am"
      And I press "Save"
    Then I should be on the event listing page
      And I should see "Eat Chicken from 9:00am on 01/01/2009 until 10:00am on 01/03/2009"