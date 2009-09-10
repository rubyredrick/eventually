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
      And I should see "Eat Chicken from 9:00AM on 01/01/2009 until 10:00AM on 01/03/2009"

  Scenario: Editing an event
    Given an event "Blah" starting "1/1/2009 at 9:00am" and ending "1/2/2009 at 10:00am"
    When I am on the event listing page
      And I follow "Blah"
    Then the "What" field should contain "Blah"
      And the "Start Date" field should contain "01/01/2009"
      And the "Start Time" field should contain "9:00AM"
      And the "End Date" field should contain "01/02/2009"
      And the "End Time" field should contain "10:00AM"
    When I fill in "What" with "Eat Pork"
      And I fill in "Start Date" with "2/1/2009"
      And I fill in "Start Time" with "11:00am"
      And I fill in "End Date" with "2/2/2009"
      And I fill in "End Time" with "12:00pm"
      And I press "Update"
    Then I should be on the event listing page
      And I should see "Eat Pork from 11:00AM on 02/01/2009 until 12:00PM on 02/02/2009"
